import os
import random
import shutil
import cv2
import fiftyone as fo
import fiftyone.zoo as foz

RANDOM_SEED = 42
MIN_FACE_AREA_RATIO = 0.025
MIN_FACE_WIDTH = 44
MIN_FACE_HEIGHT = 44
FACE_MIN_NEIGHBORS = 8
EYE_MIN_NEIGHBORS = 5
MIN_WEAK_FACE_AREA_RATIO = 0.006
MIN_WEAK_FACE_WIDTH = 24
MIN_WEAK_FACE_HEIGHT = 24
WEAK_FACE_MIN_NEIGHBORS = 4
USE_EXTERNAL_FACE_DATASET = True
EXTERNAL_FACE_DATASET_NAME = "widerface"
EXTERNAL_FACE_BUFFER_MULTIPLIER = 3


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

        face_roi_gray = gray[y:y + height, x:x + width]
        eyes = EYE_CASCADE.detectMultiScale(
            face_roi_gray,
            scaleFactor=1.1,
            minNeighbors=EYE_MIN_NEIGHBORS,
            minSize=(10, 10),
        )

        # 눈이 2개 이상 검출되는 얼굴만 person 판정에 사용합니다.
        if len(eyes) >= 2:
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
        external_dataset = foz.load_zoo_dataset(
            EXTERNAL_FACE_DATASET_NAME,
            split=external_split,
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

def download_and_export_split(split_name, max_samples, output_dir):
    print(f"\n--- {split_name.upper()} 데이터셋 처리 중 ---")

    # 이전 실행에서 생성된 COCO 객체별 폴더를 제거합니다.
    # 이 스크립트의 output_dir은 생성물 전용 경로여야 합니다.
    if os.path.exists(output_dir):
        shutil.rmtree(output_dir)
    
    # 1. COCO 데이터셋 로드
    dataset = foz.load_zoo_dataset(
        "coco-2017",
        split=split_name,
        label_types=["detections"],
        max_samples=max_samples,
    )

    # metadata.width/height 필터를 쓰기 전에 메타데이터를 채웁니다.
    dataset.compute_metadata()
    
    # 2. 해상도 필터링 (128x128 이상)
    filtered_dataset = dataset.match(
        (fo.ViewField("metadata.width") >= 128) & 
        (fo.ViewField("metadata.height") >= 128)
    )

    print(f"{split_name}: 원본 {len(dataset)}장, 해상도 필터 후 {len(filtered_dataset)}장")

    person_dir = os.path.join(output_dir, "person")
    non_person_dir = os.path.join(output_dir, "non_person")

    os.makedirs(person_dir, exist_ok=True)
    os.makedirs(non_person_dir, exist_ok=True)

    person_filepaths = []
    non_person_filepaths = []
    person_label_without_face_count = 0
    ambiguous_skipped_count = 0

    for sample in filtered_dataset.iter_samples(progress=True):
        person_label_exists = has_person_label(sample)
        visible_face_exists = has_visible_face(sample.filepath, MIN_FACE_AREA_RATIO)
        weak_face_exists = has_weak_face_cue(sample.filepath)

        # person 조건 강화: person 라벨 + 강한 얼굴 검출을 동시에 만족해야 person
        if person_label_exists and visible_face_exists:
            person_filepaths.append(sample.filepath)
        else:
            # non_person 조건 강화: person 라벨 없음 + 강한 얼굴 없음 + 약한 얼굴 단서도 없음
            if not weak_face_exists:
                non_person_filepaths.append(sample.filepath)
            else:
                ambiguous_skipped_count += 1

        if person_label_exists and not visible_face_exists:
            person_label_without_face_count += 1

    person_count = len(person_filepaths)
    non_person_count = len(non_person_filepaths)

    if USE_EXTERNAL_FACE_DATASET and person_count < non_person_count:
        needed_count = non_person_count - person_count
        external_person_filepaths = collect_external_face_filepaths(split_name, needed_count)
        person_filepaths.extend(external_person_filepaths)
        person_count = len(person_filepaths)

    target_count = min(person_count, non_person_count)
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
        f"{split_name}: non_person 강화 조건 약한 얼굴 단서 없음 "
        f"(면적 {MIN_WEAK_FACE_AREA_RATIO}, 크기 {MIN_WEAK_FACE_WIDTH}x{MIN_WEAK_FACE_HEIGHT}, "
        f"neighbors {WEAK_FACE_MIN_NEIGHBORS})"
    )
    print(
        f"{split_name}: 외부 얼굴 데이터 사용 여부 {USE_EXTERNAL_FACE_DATASET} "
        f"({EXTERNAL_FACE_DATASET_NAME})"
    )
    print(f"{split_name}: person 라벨은 있지만 얼굴 미검출 {person_label_without_face_count}장")
    print(f"{split_name}: 애매 샘플(학습 제외) {ambiguous_skipped_count}장")
    print(f"{split_name}: 랜덤 시드 {RANDOM_SEED}")

if __name__ == "__main__":
    # Train 데이터 (예: 1200장)
    download_and_export_split("train", max_samples=1200, output_dir="./dataset/train")
    
    # Val 데이터 (예: 300장)
    download_and_export_split("validation", max_samples=300, output_dir="./dataset/val")
    
    print("\n모든 데이터셋 다운로드 및 분류 완료!")
