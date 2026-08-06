# ============================================================================
# SmartVision 128x128 CNN Scratch Retrain Pipeline (Google Colab / Local Code)
# 데이터셋: dataset_lfw_real.zip (LFW 사람 130장 + 실사 non_person 130장 - 1:1)
# 모델 구조: HumanDetectorCNN_FPGA128 (128x128 입력, 기존과 100% 동일)
# ============================================================================

import os
import shutil
import zipfile
import numpy as np
import matplotlib.pyplot as plt
from PIL import Image
import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import Dataset, DataLoader
import torchvision.transforms.functional as TF

# ----------------------------------------------------------------------------
# 1. 구글 드라이브 마운트 및 경로 설정
# ----------------------------------------------------------------------------
try:
    from google.colab import drive
    drive.mount('/content/drive')
    is_colab = True
except ImportError:
    is_colab = False

# 드라이브 경로 지정 (Colab 기준)
ZIP_PATH = '/content/drive/MyDrive/CNN_human_v3/dataset_lfw_real.zip'
LOCAL_DATA_DIR = '/content/dataset_lfw_real'
MODEL_SAVE_DIR = '/content/drive/MyDrive/CNN_human_v3'

print("=" * 60)
print("📦 dataset_lfw_real 데이터셋 압축 해제 중...")
print("=" * 60)

if is_colab:
    if os.path.exists(LOCAL_DATA_DIR):
        shutil.rmtree(LOCAL_DATA_DIR)
    os.makedirs(LOCAL_DATA_DIR, exist_ok=True)

    try:
        with zipfile.ZipFile(ZIP_PATH, 'r') as zip_ref:
            zip_ref.extractall(LOCAL_DATA_DIR)
        print(f"✅ 데이터셋 압축 해제 성공! ({LOCAL_DATA_DIR})")
    except Exception as e:
        print(f"❌ 압축 해제 실패: {e}")

device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(f"✅ 학습 디바이스: {device}")


# ----------------------------------------------------------------------------
# 2. 데이터 로드 및 전처리 (★ 128x128 해상도 & Augmentation)
# ----------------------------------------------------------------------------
INPUT_SIZE = 128
BATCH_SIZE = 16   # 소규모 260장 데이터셋에 맞춘 적정 배치 사이즈

def load_split_dataset(base_dir, split='train', target_size=128):
    split_dir = os.path.join(base_dir, split)
    images, labels = [], []
    
    label_map = {'person': 1, 'non_person': 0, '1': 1, '0': 0}
    
    for subfolder, label in label_map.items():
        folder_path = os.path.join(split_dir, subfolder)
        if not os.path.exists(folder_path):
            continue
            
        for root, _, files in os.walk(folder_path):
            for file in files:
                if file.lower().endswith(('.png', '.jpg', '.jpeg', '.bmp')):
                    img_path = os.path.join(root, file)
                    try:
                        img = Image.open(img_path).convert('L')
                        img_resized = img.resize((target_size, target_size), Image.Resampling.BILINEAR)
                        images.append(np.array(img_resized))
                        labels.append(label)
                    except Exception:
                        continue

    print(f"  - [{split}] 로드 완료: 총 {len(labels):,}장 (사람: {sum(labels)}, 비사람: {len(labels)-sum(labels)})")
    return np.array(images), np.array(labels)

if is_colab and os.path.exists(LOCAL_DATA_DIR):
    print("\n📊 데이터 로딩 시작...")
    X_train, y_train = load_split_dataset(LOCAL_DATA_DIR, split='train', target_size=INPUT_SIZE)
    X_val, y_val = load_split_dataset(LOCAL_DATA_DIR, split='val', target_size=INPUT_SIZE)

# 적은 데이터셋의 과적합을 방지하기 위한 강건한 Augmentation
class HumanDataset(Dataset):
    def __init__(self, images, labels, is_train=True):
        self.images = torch.FloatTensor(images).unsqueeze(1) / 255.0
        self.labels = torch.FloatTensor(labels)
        self.is_train = is_train

    def __len__(self):
        return len(self.labels)

    def __getitem__(self, idx):
        img = self.images[idx]
        label = self.labels[idx]

        if self.is_train:
            # 1. 좌우 반전
            if torch.rand(1).item() > 0.5:
                img = TF.hflip(img)
            # 2. 미세 회전 및 이동
            if torch.rand(1).item() > 0.5:
                angle = torch.randint(-12, 13, (1,)).item()
                tx = torch.randint(-4, 5, (1,)).item()
                ty = torch.randint(-4, 5, (1,)).item()
                img = TF.affine(img, angle=angle, translate=[tx, ty], scale=1.0, shear=0.0)

        return img, label


# ----------------------------------------------------------------------------
# 3. [최상위 128x128] 기존과 100% 동일한 HumanDetectorCNN_FPGA128 모델
# ----------------------------------------------------------------------------
class HumanDetectorCNN_FPGA128(nn.Module):
    def __init__(self):
        super(HumanDetectorCNN_FPGA128, self).__init__()
        self.conv1 = nn.Conv2d(1, 16, kernel_size=3, stride=1, padding=1, bias=False)
        self.bn1 = nn.BatchNorm2d(16)
        self.conv2 = nn.Conv2d(16, 32, kernel_size=3, stride=1, padding=1, bias=False)
        self.bn2 = nn.BatchNorm2d(32)
        self.conv3 = nn.Conv2d(32, 64, kernel_size=3, stride=1, padding=1, bias=False)
        self.bn3 = nn.BatchNorm2d(64)

        self.relu = nn.ReLU(inplace=True)
        self.pool = nn.MaxPool2d(kernel_size=2, stride=2)
        self.dropout = nn.Dropout(0.4)

        # Flatten 크기: 64 * 4 * 4 = 1024
        self.fc1 = nn.Linear(64 * 4 * 4, 64)
        self.fc2 = nn.Linear(64, 1)

    def forward(self, x):
        x = self.pool(self.relu(self.bn1(self.conv1(x))))  # → 16 x 64 x 64
        x = self.pool(self.relu(self.bn2(self.conv2(x))))  # → 32 x 32 x 32
        x = self.pool(self.relu(self.bn3(self.conv3(x))))  # → 64 x 16 x 16
        x = self.pool(x)                                    # → 64 x  8 x  8
        x = self.pool(x)                                    # → 64 x  4 x  4
        x = x.reshape(x.size(0), -1)                        # → 1024
        x = self.dropout(x)
        x = self.relu(self.fc1(x))                           # → 64
        x = self.fc2(x)                                      # → 1
        return x.squeeze(1)


def main():
    model = HumanDetectorCNN_FPGA128().to(device)
    print(model)

    if not is_colab:
        print("\n💡 본 스크립트는 Google Colab 환경 학습용 코드가 포함되어 있습니다.")
        print("   Colab에서 셀에 코드를 복사하거나 본 파이썬 파일을 업로드하여 실행하세요.")
        return

    train_dataset = HumanDataset(X_train, y_train, is_train=True)
    val_dataset = HumanDataset(X_val, y_val, is_train=False)

    train_loader = DataLoader(train_dataset, batch_size=BATCH_SIZE, shuffle=True, drop_last=True)
    val_loader = DataLoader(val_dataset, batch_size=BATCH_SIZE, shuffle=False)

    print(f"✅ DataLoader 준비 완료 (Batch Size: {BATCH_SIZE})")

    # ----------------------------------------------------------------------------
    # 4. 처음부터 재학습(Scratch Retrain) 및 자동 저장
    # ----------------------------------------------------------------------------
    EPOCHS = 50
    LR = 0.001

    criterion = nn.BCEWithLogitsLoss()
    optimizer = optim.AdamW(model.parameters(), lr=LR, weight_decay=1e-4)
    scheduler = optim.lr_scheduler.ReduceLROnPlateau(optimizer, mode='min', factor=0.5, patience=3)

    best_val_loss = float('inf')
    LOCAL_MODEL_PATH = '/content/best_model_lfw_real.pth'
    DRIVE_MODEL_PATH = os.path.join(MODEL_SAVE_DIR, 'best_model_lfw_real.pth')

    print("\n🚀 처음부터(Scratch) 재학습 시작...")
    print("=" * 60)

    for epoch in range(1, EPOCHS + 1):
        # --- Train ---
        model.train()
        train_loss, train_correct = 0.0, 0
        for imgs, labels in train_loader:
            imgs, labels = imgs.to(device), labels.to(device)
            
            optimizer.zero_grad()
            outputs = model(imgs)
            loss = criterion(outputs, labels)
            loss.backward()
            optimizer.step()
            
            train_loss += loss.item() * imgs.size(0)
            preds = (torch.sigmoid(outputs) >= 0.5).float()
            train_correct += (preds == labels).sum().item()

        train_loss /= len(train_loader.dataset)
        train_acc = train_correct / len(train_loader.dataset)

        # --- Validation ---
        model.eval()
        val_loss, val_correct = 0.0, 0
        with torch.no_grad():
            for imgs, labels in val_loader:
                imgs, labels = imgs.to(device), labels.to(device)
                outputs = model(imgs)
                loss = criterion(outputs, labels)
                
                val_loss += loss.item() * imgs.size(0)
                preds = (torch.sigmoid(outputs) >= 0.5).float()
                val_correct += (preds == labels).sum().item()

        val_loss /= len(val_loader.dataset)
        val_acc = val_correct / len(val_loader.dataset)
        scheduler.step(val_loss)

        print(f"Epoch [{epoch:02d}/{EPOCHS}] | Train Loss: {train_loss:.4f} Acc: {train_acc*100:.2f}% | Val Loss: {val_loss:.4f} Acc: {val_acc*100:.2f}%")

        # 최고 성능 모델 저장
        if val_loss < best_val_loss:
            best_val_loss = val_loss
            torch.save(model.state_dict(), LOCAL_MODEL_PATH)
            try:
                shutil.copy(LOCAL_MODEL_PATH, DRIVE_MODEL_PATH)
                print(f"  ⭐ 최고 성능 갱신! 드라이브 저장 완료: CNN_human_v3/best_model_lfw_real.pth")
            except Exception:
                print(f"  ⭐ 최고 성능 갱신! (로컬 저장 완료: {LOCAL_MODEL_PATH})")

    print("=" * 60)
    print(f"🎉 Scratch 재학습 완료! 최고 Validation Loss: {best_val_loss:.4f}")
    print(f"💾 새로운 모델이 구글 드라이브('CNN_human_v3/best_model_lfw_real.pth')에 저장되었습니다.")

if __name__ == '__main__':
    main()
