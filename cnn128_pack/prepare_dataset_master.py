import os
import glob
import shutil

# ----------------------------------------------------------------------------
# 로컬 데이터셋 마스터 정밀 통합 스크립트
# - dataset/0 및 save_dataset/**/non_person → dataset_master/0 (배경)
# - dataset/1 및 save_dataset/**/person     → dataset_master/1 (사람)
# ----------------------------------------------------------------------------
BASE_DIR = r'D:\CNN_TEST'
SRC_DATASET = os.path.join(BASE_DIR, 'dataset')
SRC_SAVE_DATASET = os.path.join(BASE_DIR, 'save_dataset')
DST_MASTER = os.path.join(BASE_DIR, 'dataset_master')

# 기존 오염 방지를 위해 기존 dataset_master 지우고 재생성
if os.path.exists(DST_MASTER):
    shutil.rmtree(DST_MASTER)

os.makedirs(os.path.join(DST_MASTER, '0'), exist_ok=True)
os.makedirs(os.path.join(DST_MASTER, '1'), exist_ok=True)

print("=" * 60)
print("[DATASET INTEGRATION] non_person/0 -> 0, person/1 -> 1")
print("=" * 60)

copied_count = {'0': 0, '1': 0}

def copy_images_from_path(src_dir, target_label):
    if not os.path.exists(src_dir): return
    image_paths = []
    for ext in ['*.png', '*.jpg', '*.jpeg', '*.bmp']:
        image_paths.extend(glob.glob(os.path.join(src_dir, '**', ext), recursive=True))
    
    dst_dir = os.path.join(DST_MASTER, str(target_label))
    for src_path in image_paths:
        fname = f"{copied_count[str(target_label)]:05d}_{os.path.basename(src_path)}"
        dst_path = os.path.join(dst_dir, fname)
        shutil.copy2(src_path, dst_path)
        copied_count[str(target_label)] += 1

# 1. D:\CNN_TEST\dataset 에서 0과 1 정밀 복사
print("1. D:\\CNN_TEST\\dataset 복사 중...")
copy_images_from_path(os.path.join(SRC_DATASET, '0'), target_label=0)
copy_images_from_path(os.path.join(SRC_DATASET, '1'), target_label=1)

# 2. D:\CNN_TEST\save_dataset 에서 non_person(0) 및 person(1) 정밀 복사
print("2. D:\\CNN_TEST\\save_dataset (non_person -> 0, person -> 1) 정밀 복사 중...")

for non_person_path in glob.glob(os.path.join(SRC_SAVE_DATASET, '**', 'non_person'), recursive=True):
    copy_images_from_path(non_person_path, target_label=0)

for person_path in glob.glob(os.path.join(SRC_SAVE_DATASET, '**', 'person'), recursive=True):
    if os.path.basename(person_path) == 'person':
        copy_images_from_path(person_path, target_label=1)

print("\n" + "=" * 60)
print("[COMPLETED] Master Dataset Ready (D:\\CNN_TEST\\dataset_master)")
print(f"   - 0 (Background / non_person): {copied_count['0']:,} images")
print(f"   - 1 (Person / person):         {copied_count['1']:,} images")
print(f"   - Total Images:                {copied_count['0'] + copied_count['1']:,} images")
print("=" * 60)
