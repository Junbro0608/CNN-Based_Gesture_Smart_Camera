import os
import random
import shutil
import time
import cv2
import psutil
import fiftyone as fo
import fiftyone.zoo as foz

RANDOM_SEED = 42
MIN_FACE_AREA_RATIO = 0.03
MIN_FACE_WIDTH = 48
MIN_FACE_HEIGHT = 48
FACE_MIN_NEIGHBORS = 8
EYE_MIN_NEIGHBORS = 5
MIN_WEAK_FACE_AREA_RATIO = 0.006
MIN_WEAK_FACE_WIDTH = 24
MIN_WEAK_FACE_HEIGHT = 24
WEAK_FACE_MIN_NEIGHBORS = 4
USE_EXTERNAL_FACE_DATASET = True
EXTERNAL_FACE_DATASET_NAME = "widerface"
EXTERNAL_FACE_BUFFER_MULTIPLIER = 3
USE_COCO_PERSON_FALLBACK = False
COCO_DATASETS = ["coco-2014", "coco-2017"]
# 출력 데이터셋 클래스별 목표 장수
TRAIN_TARGET_PER_CLASS = 400
VAL_TARGET_PER_CLASS = 100
# non_person으로 사용할 권장 COCO 카테고리 목록
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

FIFTYONE_LOAD_RETRIES = 5
FIFTYONE_RETRY_BASE_SECONDS = 2


FACE_CASCADE = cv2.CascadeClassifier(
    os.path.join(cv2.data.haarcascades, "haarcascade_frontalface_default.xml")
)
EYE_CASCADE = cv2.CascadeClassifier(
    os.path.join(cv2.data.haarcascades, "haarcascade_eye.xml")
)


def has_visible_face(image_path, min_face_area_ratio):
    image = cv2.imread(image_path)
    if image is None:
        return False

    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    faces = FACE_CASCADE.detectMultiScale(
        gray,
        scaleFactor=1.1,
        minNeighbors=FACE_MIN_NEIGHBORS,
        minSize=(MIN_FACE_WIDTH, MIN_FACE_HEIGHT),
    )

    image_area = image.shape[0] * image.shape[1]
    for x, y, width, height in faces:
        if (width * height) / image_area < min_face_area_ratio:
            continue

        # 얼굴 박스가 충분히 크면 person으로 인정합니다.
        return True

    return False


def has_weak_face_cue(image_path):
    image = cv2.imread(image_path)
    if image is None:
        return False

    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    faces = FACE_CASCADE.detectMultiScale(
        gray,
        scaleFactor=1.1,
        minNeighbors=WEAK_FACE_MIN_NEIGHBORS,
        minSize=(MIN_WEAK_FACE_WIDTH, MIN_WEAK_FACE_HEIGHT),
    )

    image_area = image.shape[0] * image.shape[1]
    for _, _, width, height in faces:
        if (width * height) / image_area >= MIN_WEAK_FACE_AREA_RATIO:
            return True

    return False


def has_person_label(sample):
    detections = getattr(sample.ground_truth, "detections", None) or []
    for detection in detections:
        if detection.label == "person":
            return True
    return False


def has_non_person_category_label(sample, allowed_labels=None):
    detections = getattr(sample.ground_truth, "detections", None) or []
    non_person_labels = {detection.label for detection in detections if detection.label != "person"}

    if not non_person_labels:
        return False

    if not allowed_labels:
        return True

    allowed = set(allowed_labels)
    return len(non_person_labels.intersection(allowed)) > 0


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


def map_split_for_external_dataset(split_name):
    if split_name == "validation":
        return "val"
    return split_name


def collect_external_face_filepaths(split_name, needed_count):
    if needed_count <= 0:
        return []

    external_split = map_split_for_external_dataset(split_name)
    max_samples = needed_count * EXTERNAL_FACE_BUFFER_MULTIPLIER

    try:
        external_dataset = load_zoo_dataset_with_retry(
            EXTERNAL_FACE_DATASET_NAME,
            split_name=external_split,
            max_samples=max_samples,
        )
    except Exception as error:
        print(
            f"{split_name}: 외부 얼굴 데이터셋 로드 실패 "
            f"({EXTERNAL_FACE_DATASET_NAME}/{external_split}) - {error}"
        )
        return []

    external_filepaths = []
    for sample in external_dataset.iter_samples(progress=True):
        if has_visible_face(sample.filepath, MIN_FACE_AREA_RATIO):
            external_filepaths.append(sample.filepath)
            if len(external_filepaths) >= needed_count:
                break

    print(
        f"{split_name}: 외부 얼굴 데이터 사용 "
        f"{len(external_filepaths)}장 ({EXTERNAL_FACE_DATASET_NAME}/{external_split})"
    )
    return external_filepaths


def copy_samples_with_unique_names(filepaths, target_dir, prefix):
    for idx, src in enumerate(filepaths, start=1):
        _, extension = os.path.splitext(src)
        extension = extension if extension else ".jpg"
        filename = f"{prefix}_{idx:06d}{extension.lower()}"
        shutil.copy2(src, os.path.join(target_dir, filename))

def load_filtered_coco_samples(split_name, max_samples, dataset_name):
    dataset = load_zoo_dataset_with_retry(
        dataset_name,
        split_name=split_name,
        max_samples=max_samples,
        label_types=["detections"],
    )

    # metadata.width/height 필터를 쓰기 전에 메타데이터를 채웁니다.
    dataset.compute_metadata()

    filtered_dataset = dataset.match(
        (fo.ViewField("metadata.width") >= 128) &
        (fo.ViewField("metadata.height") >= 128)
    )

    print(
        f"{split_name}: {dataset_name} 원본 {len(dataset)}장, "
        f"해상도 필터 후 {len(filtered_dataset)}장"
    )
    return filtered_dataset


def download_and_export_split(
    split_name,
    max_samples,
    output_dir,
    desired_per_class,
    coco_datasets=None,
):
    print(f"\n--- {split_name.upper()} 데이터셋 처리 중 ---")

    if coco_datasets is None:
        coco_datasets = COCO_DATASETS

    # 이전 실행에서 생성된 COCO 객체별 폴더를 제거합니다.
    # 이 스크립트의 output_dir은 생성물 전용 경로여야 합니다.
    if os.path.exists(output_dir):
        shutil.rmtree(output_dir)

    print(f"{split_name}: 사용 COCO 데이터셋 {', '.join(coco_datasets)}")

    person_dir = os.path.join(output_dir, "person")
    non_person_dir = os.path.join(output_dir, "non_person")

    os.makedirs(person_dir, exist_ok=True)
    os.makedirs(non_person_dir, exist_ok=True)

    person_filepaths = []
    non_person_filepaths = []
    person_label_without_face_count = 0
    skipped_without_non_person_category_count = 0

    seen_filepaths = set()

    for dataset_name in coco_datasets:
        filtered_dataset = load_filtered_coco_samples(split_name, max_samples, dataset_name)

        for sample in filtered_dataset.iter_samples(progress=True):
            if sample.filepath in seen_filepaths:
                continue
            seen_filepaths.add(sample.filepath)

            person_label_exists = has_person_label(sample)
            visible_face_exists = has_visible_face(sample.filepath, MIN_FACE_AREA_RATIO)
            non_person_category_exists = has_non_person_category_label(
                sample,
                NON_PERSON_CATEGORY_LABELS,
            )

            # person 조건 강화: person 라벨 + 강한 얼굴 검출을 동시에 만족해야 person
            if person_label_exists and visible_face_exists:
                person_filepaths.append(sample.filepath)
            else:
                # non_person 조건: person 라벨이 없고, non_person 카테고리 라벨이 있어야 함
                if (not person_label_exists) and non_person_category_exists:
                    non_person_filepaths.append(sample.filepath)
                else:
                    skipped_without_non_person_category_count += 1

            if person_label_exists and not visible_face_exists:
                person_label_without_face_count += 1

    person_count = len(person_filepaths)
    non_person_count = len(non_person_filepaths)

    if USE_EXTERNAL_FACE_DATASET and person_count < desired_per_class:
        needed_count = desired_per_class - person_count
        external_person_filepaths = collect_external_face_filepaths(split_name, needed_count)
        person_filepaths.extend(external_person_filepaths)
        person_count = len(person_filepaths)

    if person_count < desired_per_class or non_person_count < desired_per_class:
        raise RuntimeError(
            f"{split_name}: 목표 장수({desired_per_class})를 채우지 못했습니다. "
            f"person={person_count}, non_person={non_person_count}. "
            f"max_samples를 늘리거나 NON_PERSON_CATEGORY_LABELS를 조정하세요."
        )

    target_count = desired_per_class
    rng = random.Random(RANDOM_SEED)

    rng.shuffle(person_filepaths)
    rng.shuffle(non_person_filepaths)

    selected_person = person_filepaths[:target_count]
    selected_non_person = non_person_filepaths[:target_count]

    copy_samples_with_unique_names(selected_person, person_dir, "person")
    copy_samples_with_unique_names(selected_non_person, non_person_dir, "non_person")

    print(
        f"{split_name}: person 원본 {person_count}장, "
        f"non_person 원본 {non_person_count}장"
    )
    print(
        f"{split_name}: 균형 저장 person {len(selected_person)}장, "
        f"non_person {len(selected_non_person)}장"
    )
    print(
        f"{split_name}: person 기준은 COCO person 라벨 + 얼굴 검출 "
        f"(면적 {MIN_FACE_AREA_RATIO}, 크기 {MIN_FACE_WIDTH}x{MIN_FACE_HEIGHT}, "
        f"face neighbors {FACE_MIN_NEIGHBORS}, eye neighbors {EYE_MIN_NEIGHBORS})"
    )
    print(
        f"{split_name}: non_person 기준은 COCO non_person 카테고리 라벨"
    )
    if NON_PERSON_CATEGORY_LABELS:
        print(
            f"{split_name}: non_person 허용 카테고리 {', '.join(NON_PERSON_CATEGORY_LABELS)}"
        )
    else:
        print(f"{split_name}: non_person 허용 카테고리 person 제외 전체")
    print(
        f"{split_name}: 외부 얼굴 데이터 사용 여부 {USE_EXTERNAL_FACE_DATASET} "
        f"({EXTERNAL_FACE_DATASET_NAME})"
    )
    print(f"{split_name}: COCO person fallback 사용 여부 {USE_COCO_PERSON_FALLBACK}")
    print(f"{split_name}: person 라벨은 있지만 얼굴 미검출 {person_label_without_face_count}장")
    print(
        f"{split_name}: non_person 카테고리 부재 또는 person 포함으로 제외 "
        f"{skipped_without_non_person_category_count}장"
    )
    print(f"{split_name}: 랜덤 시드 {RANDOM_SEED}")

if __name__ == "__main__":
    print(f"COCO 연도 소스: {', '.join(COCO_DATASETS)}")
    print(
        f"클래스별 목표 장수: train={TRAIN_TARGET_PER_CLASS}, "
        f"val={VAL_TARGET_PER_CLASS}"
    )

    # Train 데이터
    download_and_export_split(
        "train",
        max_samples=6000,
        output_dir="./dataset/train",
        desired_per_class=TRAIN_TARGET_PER_CLASS,
        coco_datasets=COCO_DATASETS,
    )
    
    # Val 데이터
    download_and_export_split(
        "validation",
        max_samples=2000,
        output_dir="./dataset/val",
        desired_per_class=VAL_TARGET_PER_CLASS,
        coco_datasets=COCO_DATASETS,
    )
    
    print("\n모든 데이터셋 다운로드 및 분류 완료!")
