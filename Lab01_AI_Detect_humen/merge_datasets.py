import os
import shutil

SOURCE_DATASET_1 = "./dataset"
SOURCE_DATASET_2 = "./dataset_body"
DEST_DATASET = "./dataset_combined"

SPLITS = ["train", "val"]
CLASSES = ["person", "non_person"]

def merge_datasets():
    print("==========================================")
    print(" 데이터셋 병합 시작 (얼굴 + 상반신/전신)")
    print("==========================================")

    # 1. 목적지 폴더 재생성
    if os.path.exists(DEST_DATASET):
        shutil.rmtree(DEST_DATASET)

    total_counts = {}

    for split in SPLITS:
        for cls in CLASSES:
            dest_dir = os.path.join(DEST_DATASET, split, cls)
            os.makedirs(dest_dir, exist_ok=True)

            count = 0

            # Source 1 (기존 얼굴 데이터셋)
            src1_dir = os.path.join(SOURCE_DATASET_1, split, cls)
            if os.path.exists(src1_dir):
                for filename in os.listdir(src1_dir):
                    src_path = os.path.join(src1_dir, filename)
                    if os.path.isfile(src_path):
                        count += 1
                        dest_filename = f"face_{cls}_{count:06d}{os.path.splitext(filename)[1].lower()}"
                        shutil.copy2(src_path, os.path.join(dest_dir, dest_filename))

            # Source 2 (신규 상반신/전신 데이터셋)
            src2_dir = os.path.join(SOURCE_DATASET_2, split, cls)
            if os.path.exists(src2_dir):
                for filename in os.listdir(src2_dir):
                    src_path = os.path.join(src2_dir, filename)
                    if os.path.isfile(src_path):
                        count += 1
                        dest_filename = f"body_{cls}_{count:06d}{os.path.splitext(filename)[1].lower()}"
                        shutil.copy2(src_path, os.path.join(dest_dir, dest_filename))

            total_counts[f"{split}/{cls}"] = count
            print(f"[{split.upper()}] {cls} -> 총 {count}장 복사 완료 (얼굴 + 상반신/전신)")

    print("\n==========================================")
    print(" 병합 완료 현황 (저장 경로: ./dataset_combined)")
    print("==========================================")
    for key, cnt in total_counts.items():
        print(f" - {key}: {cnt}장")

if __name__ == "__main__":
    merge_datasets()
