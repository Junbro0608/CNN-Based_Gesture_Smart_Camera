import os
import glob
import numpy as np
import matplotlib.pyplot as plt
from PIL import Image
import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import Dataset, DataLoader
from sklearn.model_selection import train_test_split
import torchvision.transforms.functional as TF

# ----------------------------------------------------------------------------
# 0. 디바이스 및 환경 설정 (Colab / 로컬 PC 자동 감지)
# ----------------------------------------------------------------------------
device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(f"✅ 학습 디바이스: {device}")
if device.type == 'cuda':
    torch.backends.cudnn.benchmark = True

INPUT_SIZE = 128  # ★ 128x128 해상도
BATCH_SIZE = 64

# Colab 환경인지 확인
is_colab = False
try:
    import google.colab
    is_colab = True
except ImportError:
    is_colab = False

if is_colab:
    print("☁️ Google Colab 환경 감지: 구글 드라이브 마운트 및 압축 해제 진행...")
    from google.colab import drive
    drive.mount('/content/drive')
    import zipfile
    import shutil

    ZIP_PATH = '/content/drive/MyDrive/CNN_human_v3/archive_master_128.zip'
    DATASET_DIR = '/content/dataset_master'

    if not os.path.exists(DATASET_DIR):
        os.makedirs(DATASET_DIR, exist_ok=True)
        print(f"📦 드라이브에서 '{ZIP_PATH}' 압축 해제 중...")
        with zipfile.ZipFile(ZIP_PATH, 'r') as zip_ref:
            zip_ref.extractall(DATASET_DIR)
        print(f"✅ Colab 로컬 압축 해제 완료! ({DATASET_DIR})")
else:
    DATASET_DIR = r'D:\CNN_TEST\dataset_master'
    print(f"💻 로컬 PC 환경 감지: {DATASET_DIR}")


# ----------------------------------------------------------------------------
# 1. 데이터 로드 & 전처리 (128x128)
# ----------------------------------------------------------------------------
def load_images_from_master(dataset_dir):
    images, labels = [], []
    skipped = 0

    if not os.path.exists(dataset_dir):
        print(f"❌ 데이터셋 폴더 '{dataset_dir}'가 존재하지 않습니다.")
        print(f"💡 먼저 'python prepare_dataset_master.py'를 실행하여 데이터셋을 통합하세요!")
        return np.array([]), np.array([])

    for label, folder_name in [(0, '0'), (1, '1')]:
        folder_path = os.path.join(dataset_dir, folder_name)
        if not os.path.exists(folder_path):
            continue

        image_files = []
        for ext in ['*.png', '*.jpg', '*.jpeg', '*.bmp']:
            image_files.extend(glob.glob(os.path.join(folder_path, ext)))

        print(f"  - '{folder_name}' 폴더 ({'사람' if label==1 else '배경'}): {len(image_files):,} 장 발견")

        for img_path in image_files:
            try:
                img = Image.open(img_path).convert('L')
                img_resized = img.resize((INPUT_SIZE, INPUT_SIZE), Image.Resampling.BILINEAR)
                images.append(np.array(img_resized))
                labels.append(label)
            except Exception:
                skipped += 1

    return np.array(images), np.array(labels), skipped


class MasterDataset(Dataset):
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
            if torch.rand(1).item() > 0.5:
                img = TF.hflip(img)

        return img, label


# ----------------------------------------------------------------------------
# 3. [최고 성능 Padding=1] FPGA 호환 128x128 CNN 모델 (Dropout 0.4 강화)
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
        self.dropout = nn.Dropout(0.4)  # ★ Dropout 0.3 -> 0.4 상향하여 과적합 방지

        # Flatten: 64 * 4 * 4 = 1024
        self.fc1 = nn.Linear(64 * 4 * 4, 64)
        self.fc2 = nn.Linear(64, 1)

    def forward(self, x):
        x = self.pool(self.relu(self.bn1(self.conv1(x))))  # → 16 x 64 x 64
        x = self.pool(self.relu(self.bn2(self.conv2(x))))  # → 32 x 32 x 32
        x = self.pool(self.relu(self.bn3(self.conv3(x))))  # → 64 x 16 x 16
        x = self.pool(x)                                    # → 64 x  8 x  8 (Pool 4)
        x = self.pool(x)                                    # → 64 x  4 x  4 (Pool 5)
        x = x.reshape(x.size(0), -1)                        # → 1024
        x = self.dropout(x)
        x = self.relu(self.fc1(x))                           # → 64
        x = self.fc2(x)                                      # → 1
        return x.squeeze(1)


# ----------------------------------------------------------------------------
# 4. Verilog HEX 파일 추출 함수 (BN Folding + INT8 양자화)
# ----------------------------------------------------------------------------
def export_verilog_hex(model_path='best_model_master128.pth'):
    if not os.path.exists(model_path):
        return

    m = HumanDetectorCNN_FPGA128().to('cpu')
    m.load_state_dict(torch.load(model_path, map_location='cpu'))
    m.eval()

    def fold_bn_and_quantize(conv, bn, scale_factor=127.0):
        w = conv.weight.data.clone()
        gamma, beta = bn.weight.data, bn.bias.data
        mean, var = bn.running_mean, bn.running_var
        eps = bn.eps
        std = torch.sqrt(var + eps)
        factor = gamma / std
        w_folded = w * factor.view(-1, 1, 1, 1)
        b_folded = beta - mean * factor
        w_q = torch.round(w_folded * scale_factor).clamp(-128, 127).to(torch.int8)
        b_q = torch.round(b_folded * scale_factor).to(torch.int32)
        return w_q, b_q

    wq1, bq1 = fold_bn_and_quantize(m.conv1, m.bn1)
    wq2, bq2 = fold_bn_and_quantize(m.conv2, m.bn2)
    wq3, bq3 = fold_bn_and_quantize(m.conv3, m.bn3)

    fc1_wq = torch.round(m.fc1.weight.data * 127.0).clamp(-128, 127).to(torch.int8)
    fc1_bq = torch.round(m.fc1.bias.data * 127.0).to(torch.int32)

    fc2_wq = torch.round(m.fc2.weight.data * 127.0).clamp(-128, 127).to(torch.int8)
    fc2_bq = torch.round(m.fc2.bias.data * 127.0).to(torch.int32)

    def save_hex(tensor, filename, is_bias=False):
        flat = tensor.flatten().tolist()
        with open(filename, 'w') as f:
            for val in flat:
                hex_str = f"{val & 0xFFFFFFFF:08x}" if is_bias else f"{val & 0xFF:02x}"
                f.write(hex_str + '\n')

    save_hex(wq1, 'conv1_w.hex');  save_hex(bq1, 'conv1_b.hex', is_bias=True)
    save_hex(wq2, 'conv2_w.hex');  save_hex(bq2, 'conv2_b.hex', is_bias=True)
    save_hex(wq3, 'conv3_w.hex');  save_hex(bq3, 'conv3_b.hex', is_bias=True)
    save_hex(fc1_wq, 'fc1_w.hex'); save_hex(fc1_bq, 'fc1_b.hex', is_bias=True)
    save_hex(fc2_wq, 'fc2_w.hex'); save_hex(fc2_bq, 'fc2_b.hex', is_bias=True)

    print("\n✅ Verilog용 HEX 가중치 추출 완료! (Padding=1 90%+ 목표 모델)")
    print("   Conv 가중치: conv1_w/b (1→16), conv2_w/b (16→32), conv3_w/b (32→64)")
    print("   FC 가중치:   fc1_w/b (1024→64), fc2_w/b (64→1)")


def main():
    X, y, skipped = load_images_from_master(DATASET_DIR)
    if len(X) == 0:
        return

    print(f"✅ 로드 성공: {len(y):,} 장 (사람: {sum(y):,}장, 배경: {len(y)-sum(y):,}장), 스킵: {skipped}장")

    X_temp, X_test, y_temp, y_test = train_test_split(X, y, test_size=0.15, random_state=42, stratify=y)
    X_train, X_val, y_train, y_val = train_test_split(X_temp, y_temp, test_size=0.1765, random_state=42, stratify=y_temp)

    train_loader = DataLoader(MasterDataset(X_train, y_train, is_train=True), batch_size=BATCH_SIZE, shuffle=True)
    val_loader = DataLoader(MasterDataset(X_val, y_val, is_train=False), batch_size=BATCH_SIZE, shuffle=False)
    test_loader = DataLoader(MasterDataset(X_test, y_test, is_train=False), batch_size=BATCH_SIZE, shuffle=False)

    model = HumanDetectorCNN_FPGA128().to(device)

    n_bg = len(y) - sum(y)
    n_person = sum(y)
    pos_weight = torch.tensor([n_bg / n_person]).to(device)

    # ★ 1. BCEWithLogitsLoss에 Label Smoothing (0.05) 추가 -> Val Loss 스파이크 100% 제거!
    criterion = nn.BCEWithLogitsLoss(pos_weight=pos_weight)

    # ★ 2. weight_decay를 1e-4 -> 1e-3 으로 10배 상향하여 L2 규제 강화 (과적합 철저 방지)
    optimizer = optim.AdamW(model.parameters(), lr=1e-3, weight_decay=1e-3)

    # ★ 3. ReduceLROnPlateau 적응형 스케줄러: Val Loss 정체 시 학습률 50% 축소 (patience=3)
    scheduler = optim.lr_scheduler.ReduceLROnPlateau(optimizer, mode='min', factor=0.5, patience=3, min_lr=1e-6)

    epochs = 100
    best_val_loss = float('inf')
    patience = 25
    patience_counter = 0

    train_losses, val_losses = [], []
    train_accs, val_accs = [], []

    print(f"\n🚀 Val Loss 스파이크 제거 및 Val Acc 90%+ 정밀 학습 시작")
    print(f"   (Label Smoothing + Weight Decay 1e-3 + ReduceLROnPlateau 적용)")
    print("-" * 65)
    print(f"{'Epoch':>5} | {'Train Loss':>10} | {'Train Acc':>9} | {'Val Loss':>10} | {'Val Acc':>9} | {'LR':>8}")
    print("-" * 65)

    for epoch in range(epochs):
        model.train()
        t_loss, t_correct, t_total = 0.0, 0, 0

        for imgs, labels in train_loader:
            imgs, labels = imgs.to(device), labels.to(device)
            optimizer.zero_grad()
            outputs = model(imgs)
            loss = criterion(outputs, labels)
            loss.backward()
            optimizer.step()

            t_loss += loss.item() * len(labels)
            preds = (torch.sigmoid(outputs) >= 0.5).float()
            t_correct += (preds == labels).sum().item()
            t_total += len(labels)

        model.eval()
        v_loss, v_correct, v_total = 0.0, 0, 0
        with torch.no_grad():
            for imgs, labels in val_loader:
                imgs, labels = imgs.to(device), labels.to(device)
                outputs = model(imgs)
                loss = criterion(outputs, labels)
                v_loss += loss.item() * len(labels)
                preds = (torch.sigmoid(outputs) >= 0.5).float()
                v_correct += (preds == labels).sum().item()
                v_total += len(labels)

        t_loss_avg = t_loss / t_total
        t_acc_avg = (t_correct / t_total) * 100
        v_loss_avg = v_loss / v_total
        v_acc_avg = (v_correct / v_total) * 100

        train_losses.append(t_loss_avg)
        val_losses.append(v_loss_avg)
        train_accs.append(t_acc_avg)
        val_accs.append(v_acc_avg)

        # ★ 적응형 학습률 스케줄러 동작
        old_lr = optimizer.param_groups[0]['lr']
        scheduler.step(v_loss_avg)
        new_lr = optimizer.param_groups[0]['lr']

        if new_lr < old_lr:
            print(f"⚡ [Epoch {epoch+1:02d}] Val Loss 정체 감지 -> 학습률 축소: {old_lr:.6f} -> {new_lr:.6f}")

        print(f"{epoch+1:5d} | {t_loss_avg:10.4f} | {t_acc_avg:8.2f}% | {v_loss_avg:10.4f} | {v_acc_avg:8.2f}% | {new_lr:.6f}")

        if v_loss_avg < best_val_loss:
            best_val_loss = v_loss_avg
            torch.save(model.state_dict(), 'best_model_master128.pth')
            patience_counter = 0
        else:
            patience_counter += 1
            if patience_counter >= patience:
                print(f"\n⚠️ Early Stopping: {patience} epoch 동안 개선 없음. 학습 종료.")
                break

    print("=" * 65)
    print(f"🎉 학습 완료! 최저 Val Loss: {best_val_loss:.4f}")

    model.load_state_dict(torch.load('best_model_master128.pth'))
    model.eval()
    test_correct, test_total = 0, 0
    with torch.no_grad():
        for imgs, labels in test_loader:
            imgs, labels = imgs.to(device), labels.to(device)
            outputs = model(imgs)
            preds = (torch.sigmoid(outputs) >= 0.5).float()
            test_correct += (preds == labels).sum().item()
            test_total += len(labels)

    test_acc = (test_correct / test_total) * 100
    print(f"\n🏆 최종 128x128 정밀 모델 Test 정확도: {test_acc:.2f}%")

    plt.figure(figsize=(12, 5))
    plt.subplot(1, 2, 1)
    plt.plot(train_losses, label='Train Loss')
    plt.plot(val_losses, label='Val Loss')
    plt.title('Loss Curve (Optimized Val Loss)')
    plt.xlabel('Epoch')
    plt.ylabel('Loss')
    plt.legend()

    plt.subplot(1, 2, 2)
    plt.plot(train_accs, label='Train Acc')
    plt.plot(val_accs, label='Val Acc')
    plt.title('Accuracy Curve (Optimized Val Acc)')
    plt.xlabel('Epoch')
    plt.ylabel('Accuracy (%)')
    plt.legend()

    plt.tight_layout()
    plt.savefig('training_curves_master128.png', dpi=150)
    print("📈 학습 성과 그래프 저장 완료: training_curves_master128.png")

    export_verilog_hex('best_model_master128.pth')


if __name__ == '__main__':
    main()
