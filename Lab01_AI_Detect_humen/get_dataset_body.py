import os
import random
import shutil
import time
import cv2
import psutil
import fiftyone as fo
import fiftyone.zoo as foz

RANDOM_SEED = 42
TRAIN_TARGET_PER_CLASS = 400
VAL_TARGET_PER_CLASS = 100
COCO_DATASETS = ["coco-2014", "coco-2017"]

# 사람 Bounding Box 크기 최저 가이드라인 (너무 작거나 흐릿한 먼 거리 사람 제외)
MIN_BBOX_WIDTH = 32
MIN_BBOX_HEIGHT = 32
MIN_BBOX_AREA_RATIO = 0.01  # 전체 이미지 대비 사람 박스 최소 1%

# Bounding Box Crop 시 주위 여백 율 (10% 여백)
CROP_MARGIN_RATIO = 0.10

FIFTYONE_LOAD_RETRIES = 5
FIFTYONE_RETRY_BASE_SECONDS = 2

NON_PERSON_CATEGORY_LABELS = [
    "car",
    "dog",
    "cat",
    "chair",
    "bottle",
    "bus",
    "truck",
    "train",
    "motorcycle",
    "bicycle",
    "boat",
    "bench",
    "bird",
    "horse",
    "sheep",
    "cow",
    "elephant",
    "bear",
    "zebra",
    "giraffe",
    "backpack",
    "umbrella",
    "handbag",
    "suitcase",
    "potted plant",
    "dining table",
    "tv",
    "laptop",
    "cell phone",
]


def load_zoo_dataset_with_retry(dataset_name, split_name, max_samples, label_types=None):
    for attempt in range(1, FIFTYONE_LOAD_RETRIES + 1):
        try:
            kwargs = {
                "split": split_name,
                "max_samples": max_samples,
            }
            if label_types is not None:
                kwargs["label_types"] = label_types

            return foz.load_zoo_dataset(dataset_name, **kwargs)

        except psutil.NoSuchProcess as error:
            if attempt == FIFTYONE_LOAD_RETRIES:
                raise

            wait_seconds = FIFTYONE_RETRY_BASE_SECONDS * attempt
            print(
                f"{split_name}: FiftyOne DB 초기화 일시 실패 "
                f"(시도 {attempt}/{FIFTYONE_LOAD_RETRIES}) - {error}"
            )
            print(f"{split_name}: {wait_seconds}초 후 재시도합니다.")
            time.sleep(wait_seconds)

        except Exception as error:
            error_text = str(error)
            transient_error = (
                "NoSuchProcess" in error_text
                or "process PID not found" in error_text
            )

            if (not transient_error) or attempt == FIFTYONE_LOAD_RETRIES:
                raise

            wait_seconds = FIFTYONE_RETRY_BASE_SECONDS * attempt
            print(
                f"{split_name}: FiftyOne 로드 일시 오류 "
                f"(시도 {attempt}/{FIFTYONE_LOAD_RETRIES}) - {error}"
            )
            print(f"{split_name}: {wait_seconds}초 후 재시도합니다.")
            time.sleep(wait_seconds)


def extract_person_crops(image_path, detections):
    """
    COCO Bounding Box [x, y, w, h] (0~1 상대좌표)를 이용하여
    여백이 포함된 정밀 상반신/전신 Crop 이미지를 생성합니다.
    """
    image = cv2.imread(image_path)
    if image is None:
        return []

    img_h, img_w = image.shape[:2]
    img_area = img_h * img_w
    crops = []

    for detection in detections:
        if detection.label != "person":
            continue

        rel_x, rel_y, rel_w, rel_h = detection.bounding_box
        pixel_w = rel_w * img_w
        pixel_h = rel_h * img_h

        # 너무 작거나 왜곡된 박스 제외
        if (
            pixel_w < MIN_BBOX_WIDTH
            or pixel_h < MIN_BBOX_HEIGHT
            or (pixel_w * pixel_h) / img_area < MIN_BBOX_AREA_RATIO
        ):
            continue

        # 중심점 및 정사각형 Crop 여백 계산
        cx = (rel_x + rel_w / 2.0) * img_w
        cy = (rel_y + rel_h / 2.0) * img_h
        side = max(pixel_w, pixel_h) * (1.0 + CROP_MARGIN_RATIO)

        xmin = max(0, int(cx - side / 2.0))
        ymin = max(0, int(cy - side / 2.0))
        xmax = min(img_w, int(cx + side / 2.0))
        ymax = min(img_h, int(cy + side / 2.0))

        crop = image[ymin:ymax, xmin:xmax]
        if crop.size > 0 and crop.shape[0] >= 16 and crop.shape[1] >= 16:
            crops.append(crop)

    return crops


def has_non_person_category_label(sample, allowed_labels):
    detections = getattr(sample.ground_truth, "detections", None) or []
    non_person_labels = {
        detection.label for detection in detections if detection.label != "person"
    }

    if not non_person_labels:
        return False

    allowed = set(allowed_labels)
    return len(non_person_labels.intersection(allowed)) > 0


def load_filtered_coco_samples(split_name, max_samples, dataset_name):
    dataset = load_zoo_dataset_with_retry(
        dataset_name,
        split_name=split_name,
        max_samples=max_samples,
        label_types=["detections"],
    )

    dataset.compute_metadata()

    filtered_dataset = dataset.match(
        (fo.ViewField("metadata.width") >= 128)
        & (fo.ViewField("metadata.height") >= 128)
    )

    print(
        f"{split_name}: {dataset_name} 원본 {len(dataset)}장, "
        f"해상도 필터 후 {len(filtered_dataset)}장"
    )
    return filtered_dataset


def download_and_export_body_split(
    split_name,
    max_samples,
    output_dir,
    desired_per_class,
    coco_datasets=None,
):
    print(f"\n--- [신규] 상반신/전신 {split_name.upper()} 데이터셋 처리 시작 ---")

    if coco_datasets is None:
        coco_datasets = COCO_DATASETS

    # 사용자가 선별/삭제 중인 폴더를 보호하기 위해 기존 폴더 삭제 구문을 제거합니다.
    # if os.path.exists(output_dir):
    #     shutil.rmtree(output_dir)

    person_dir = os.path.join(output_dir, "person")
    non_person_dir = os.path.join(output_dir, "non_person")

    os.makedirs(person_dir, exist_ok=True)
    os.makedirs(non_person_dir, exist_ok=True)

    person_crops_saved = 0
    non_person_filepaths = []
    seen_filepaths = set()

    for dataset_name in coco_datasets:
        filtered_dataset = load_filtered_coco_samples(
            split_name, max_samples, dataset_name
        )

        for sample in filtered_dataset.iter_samples(progress=True):
            if sample.filepath in seen_filepaths:
                continue
            seen_filepaths.add(sample.filepath)

            detections = getattr(sample.ground_truth, "detections", None) or []
            has_person = any(d.label == "person" for d in detections)

            # 1. Person: 상반신/전신 Bounding Box Crop 추출
            if has_person and person_crops_saved < desired_per_class:
                crops = extract_person_crops(sample.filepath, detections)
                for crop in crops:
                    if person_crops_saved >= desired_per_class:
                        break
                    person_crops_saved += 1
                    crop_filename = f"person_body_{person_crops_saved:06d}.jpg"
                    cv2.imwrite(
                        os.path.join(person_dir, crop_filename), crop
                    )

            # 2. Non-Person: 사람 없는 카테고리 수집
            if not has_person and has_non_person_category_label(
                sample, NON_PERSON_CATEGORY_LABELS
            ):
                non_person_filepaths.append(sample.filepath)

    # non_person 이미지 복사
    rng = random.Random(RANDOM_SEED)
    rng.shuffle(non_person_filepaths)
    selected_non_person = non_person_filepaths[:desired_per_class]

    for idx, src in enumerate(selected_non_person, start=1):
        _, extension = os.path.splitext(src)
        extension = extension if extension else ".jpg"
        filename = f"non_person_{idx:06d}{extension.lower()}"
        shutil.copy2(src, os.path.join(non_person_dir, filename))

    print(
        f"{split_name}: 수집 완료 - person (상반신/전신 Crop) {person_crops_saved}장, "
        f"non_person {len(selected_non_person)}장"
    )
    print(f"{split_name}: 저장 경로 -> {output_dir}")


if __name__ == "__main__":
    print("==========================================")
    print(" 신규 상반신/전신 Bounding Box Crop 데이터셋 생성")
    print("==========================================")

    # Train 데이터 생성 (./dataset_body/train)
    download_and_export_body_split(
        "train",
        max_samples=6000,
        output_dir="./dataset_body/train",
        desired_per_class=TRAIN_TARGET_PER_CLASS,
    )

    # Val 데이터 생성 (./dataset_body/val)
    download_and_export_body_split(
        "validation",
        max_samples=2000,
        output_dir="./dataset_body/val",
        desired_per_class=VAL_TARGET_PER_CLASS,
    )

    print("\n[완료] 신규 데이터셋 생성 완료! 경로: ./dataset_body/")
