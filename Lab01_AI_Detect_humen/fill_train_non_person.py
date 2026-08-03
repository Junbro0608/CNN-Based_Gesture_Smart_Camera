import os
import random
import shutil
import fiftyone.zoo as foz

RANDOM_SEED = 42
TRAIN_TARGET_PER_CLASS = 400
COCO_DATASETS = ["coco-2014", "coco-2017"]

NON_PERSON_CATEGORY_LABELS = [
    "car", "dog", "cat", "chair", "bottle", "bus", "truck", "train",
    "motorcycle", "bicycle", "boat", "bench", "bird", "horse", "sheep",
    "cow", "elephant", "bear", "zebra", "giraffe", "backpack", "umbrella",
    "handbag", "suitcase", "potted plant", "dining table", "tv", "laptop", "cell phone"
]

def has_non_person_category_label(sample, allowed_labels):
    detections = getattr(sample.ground_truth, "detections", None) or []
    non_person_labels = {d.label for d in detections if d.label != "person"}
    if not non_person_labels:
        return False
    return len(non_person_labels.intersection(set(allowed_labels))) > 0

def fill_train_non_person():
    target_dir = "./dataset_body/train/non_person"
    os.makedirs(target_dir, exist_ok=True)

    existing_files = os.listdir(target_dir)
    needed_count = TRAIN_TARGET_PER_CLASS - len(existing_files)
    if needed_count <= 0:
        print(f"train/non_person 이미 {len(existing_files)}장으로 충분합니다.")
        return

    print(f"train/non_person 부족한 {needed_count}장 수집을 시작합니다...")

    non_person_filepaths = []
    seen_filepaths = set()

    for dataset_name in COCO_DATASETS:
        if len(non_person_filepaths) >= needed_count * 3:
            break
        dataset = foz.load_zoo_dataset(dataset_name, split="train", max_samples=6000, label_types=["detections"])
        dataset.compute_metadata()
        filtered = dataset.match((foz.fo.ViewField("metadata.width") >= 128) & (foz.fo.ViewField("metadata.height") >= 128))

        for sample in filtered.iter_samples(progress=True):
            if sample.filepath in seen_filepaths:
                continue
            seen_filepaths.add(sample.filepath)

            detections = getattr(sample.ground_truth, "detections", None) or []
            has_person = any(d.label == "person" for d in detections)
            if not has_person and has_non_person_category_label(sample, NON_PERSON_CATEGORY_LABELS):
                non_person_filepaths.append(sample.filepath)
                if len(non_person_filepaths) >= needed_count * 3:
                    break

    rng = random.Random(RANDOM_SEED)
    rng.shuffle(non_person_filepaths)
    selected = non_person_filepaths[:needed_count]

    start_idx = len(existing_files) + 1
    for idx, src in enumerate(selected, start=start_idx):
        _, ext = os.path.splitext(src)
        ext = ext if ext else ".jpg"
        filename = f"non_person_{idx:06d}{ext.lower()}"
        shutil.copy2(src, os.path.join(target_dir, filename))

    print(f"[완료] train/non_person {len(selected)}장 채우기 완료! 총 {len(os.listdir(target_dir))}장.")

if __name__ == "__main__":
    fill_train_non_person()
