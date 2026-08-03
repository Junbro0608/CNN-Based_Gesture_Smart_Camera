import os
import random

RANDOM_SEED = 42
DATASET_DIR = "./dataset_combined"

def balance_dataset():
    print("==========================================")
    print(" dataset_combined 1:1 클래스 밸런싱 시작")
    print("==========================================")

    # 1. Train 밸런싱
    train_person_dir = os.path.join(DATASET_DIR, "train", "person")
    train_non_person_dir = os.path.join(DATASET_DIR, "train", "non_person")

    person_train_files = [f for f in os.listdir(train_person_dir) if os.path.isfile(os.path.join(train_person_dir, f))]
    non_person_train_files = [f for f in os.listdir(train_non_person_dir) if os.path.isfile(os.path.join(train_non_person_dir, f))]

    target_train_count = len(person_train_files) # 315

    if len(non_person_train_files) > target_train_count:
        rng = random.Random(RANDOM_SEED)
        rng.shuffle(non_person_train_files)
        to_remove = non_person_train_files[target_train_count:]
        for f in to_remove:
            os.remove(os.path.join(train_non_person_dir, f))
        print(f"[TRAIN] non_person {len(non_person_train_files)}장 -> {target_train_count}장으로 1:1 밸런스 맞춤 완료 (초과 {len(to_remove)}장 삭제)")

    # 2. Val 밸런싱
    val_person_dir = os.path.join(DATASET_DIR, "val", "person")
    val_non_person_dir = os.path.join(DATASET_DIR, "val", "non_person")

    person_val_files = [f for f in os.listdir(val_person_dir) if os.path.isfile(os.path.join(val_person_dir, f))]
    non_person_val_files = [f for f in os.listdir(val_non_person_dir) if os.path.isfile(os.path.join(val_non_person_dir, f))]

    target_val_count = len(person_val_files) # 75

    if len(non_person_val_files) > target_val_count:
        rng = random.Random(RANDOM_SEED)
        rng.shuffle(non_person_val_files)
        to_remove = non_person_val_files[target_val_count:]
        for f in to_remove:
            os.remove(os.path.join(val_non_person_dir, f))
        print(f"[VAL] non_person {len(non_person_val_files)}장 -> {target_val_count}장으로 1:1 밸런스 맞춤 완료 (초과 {len(to_remove)}장 삭제)")

    print("\n==========================================")
    print(" 최종 1:1 밸런싱 결과")
    print("==========================================")
    print(f" - train/person    : {len(os.listdir(train_person_dir))}장")
    print(f" - train/non_person: {len(os.listdir(train_non_person_dir))}장")
    print(f" - val/person      : {len(os.listdir(val_person_dir))}장")
    print(f" - val/non_person  : {len(os.listdir(val_non_person_dir))}장")

if __name__ == "__main__":
    balance_dataset()
