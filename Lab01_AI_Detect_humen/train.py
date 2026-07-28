import torch
import torch.nn as nn
import torch.optim as optim
from collections import OrderedDict
from torch.utils.data import DataLoader
from torchvision import datasets, transforms
import matplotlib.pyplot as plt

# 1. 데이터 전처리 및 데이터로더 설정
# 훈련용: 데이터 증강(Augmentation)으로 과적합 방지
train_transform = transforms.Compose([
    transforms.Grayscale(num_output_channels=1),
    transforms.Resize((170, 170)),
    transforms.RandomResizedCrop((156, 156), scale=(0.85, 1.0), ratio=(1.0, 1.0)),
    transforms.RandomHorizontalFlip(),
    transforms.RandomRotation(10),
    transforms.RandomAffine(0, translate=(0.05, 0.05)),
    transforms.ColorJitter(brightness=0.2, contrast=0.2),
    transforms.ToTensor(),
    transforms.Normalize(mean=[0.5], std=[0.5]),
])

# 검증용: 증강 없이 동일한 정규화만 적용
val_transform = transforms.Compose([
    transforms.Grayscale(num_output_channels=1),
    transforms.Resize((156, 156)),
    transforms.ToTensor(),
    transforms.Normalize(mean=[0.5], std=[0.5]),
])

train_dataset = datasets.ImageFolder(root='./dataset/train', transform=train_transform)
train_loader = DataLoader(train_dataset, batch_size=32, shuffle=True)
val_dataset = datasets.ImageFolder(root='./dataset/val', transform=val_transform)
val_loader = DataLoader(val_dataset, batch_size=32, shuffle=False)

# 2. 직접 쌓는 커스텀 CNN 모델 정의 (이진 분류용)
class PersonClassifierCNN(nn.Module):
    def __init__(self):
        super(PersonClassifierCNN, self).__init__()
        # VGG 스타일 특징 추출부 (conv*_1, conv*_2 + MaxPool)
        self.features = nn.Sequential(OrderedDict([
            ('conv1_1', nn.Conv2d(1, 16, kernel_size=3)),
            ('bn1_1', nn.BatchNorm2d(16)),
            ('relu1_1', nn.ReLU()),
            ('conv1_2', nn.Conv2d(16, 16, kernel_size=3)),
            ('bn1_2', nn.BatchNorm2d(16)),
            ('relu1_2', nn.ReLU()),
            ('pool1', nn.MaxPool2d(2, 2)),   # 152 -> 76
            ('drop1', nn.Dropout2d(0.05)),

            ('conv2_1', nn.Conv2d(16, 32, kernel_size=3)),
            ('bn2_1', nn.BatchNorm2d(32)),
            ('relu2_1', nn.ReLU()),
            ('conv2_2', nn.Conv2d(32, 32, kernel_size=3)),
            ('bn2_2', nn.BatchNorm2d(32)),
            ('relu2_2', nn.ReLU()),
            ('pool2', nn.MaxPool2d(2, 2)),   # 72 -> 36
            ('drop2', nn.Dropout2d(0.07)),

            ('conv3_1', nn.Conv2d(32, 64, kernel_size=3)),
            ('bn3_1', nn.BatchNorm2d(64)),
            ('relu3_1', nn.ReLU()),
            ('conv3_2', nn.Conv2d(64, 64, kernel_size=3)),
            ('bn3_2', nn.BatchNorm2d(64)),
            ('relu3_2', nn.ReLU()),
            ('pool3', nn.MaxPool2d(2, 2)),   # 32 -> 16
            ('drop3', nn.Dropout2d(0.08)),

            ('conv4_1', nn.Conv2d(64, 128, kernel_size=3)),
            ('bn4_1', nn.BatchNorm2d(128)),
            ('relu4_1', nn.ReLU()),
            ('conv4_2', nn.Conv2d(128, 128, kernel_size=3)),
            ('bn4_2', nn.BatchNorm2d(128)),
            ('relu4_2', nn.ReLU()),
            ('pool4', nn.MaxPool2d(2, 2)),   # 12 -> 6
            ('drop4', nn.Dropout2d(0.10))
        ]))

        # 분류기 (VGG 스타일 FC) - Sigmoid 제거: BCEWithLogitsLoss 내부에서 처리
        self.classifier = nn.Sequential(
            nn.Flatten(),
            nn.Linear(128 * 6 * 6, 512),
            nn.ReLU(),
            nn.Dropout(0.5),
            nn.Linear(512, 1)
            # Sigmoid 없음: BCEWithLogitsLoss가 내부적으로 수치 안정적으로 처리
        )

    def forward(self, x):
        x = self.features(x)
        x = self.classifier(x)
        return x

    def _initialize_weights(self):
        """He 초기화: ReLU 활성화 함수에 최적화된 가중치 초기화"""
        for m in self.modules():
            if isinstance(m, nn.Conv2d):
                nn.init.kaiming_normal_(m.weight, mode='fan_out', nonlinearity='relu')
                if m.bias is not None:
                    nn.init.zeros_(m.bias)
            elif isinstance(m, nn.BatchNorm2d):
                nn.init.ones_(m.weight)
                nn.init.zeros_(m.bias)
            elif isinstance(m, nn.Linear):
                nn.init.kaiming_normal_(m.weight, nonlinearity='relu')
                nn.init.zeros_(m.bias)

model = PersonClassifierCNN()
model._initialize_weights()  # He 초기화 적용

# 3. 손실 함수 및 옵티마이저 설정
criterion = nn.BCEWithLogitsLoss() # Sigmoid 내장 → 수치적으로 안정적인 BCE 손실
optimizer = optim.Adam(model.parameters(), lr=0.001, weight_decay=1e-4) # L2 정규화
scheduler = optim.lr_scheduler.ReduceLROnPlateau(optimizer, mode='min', patience=5, factor=0.5, min_lr=1e-5) # Val Loss 기반 LR 감소

if __name__ == "__main__":
    # 4. 모델 학습 루프
    epochs = 100
    train_loss_history = []
    train_acc_history = []
    val_loss_history = []
    val_acc_history = []

    # Early Stopping 설정
    best_val_loss = float('inf')
    best_val_acc = 0.0
    early_stop_patience = 15  # Val Loss가 15 epoch 동안 개선 없으면 중단
    early_stop_counter = 0
    plateau_start_epoch = None

    for epoch in range(epochs):
        model.train()
        running_loss = 0.0
        correct = 0
        total = 0
        
        for images, labels in train_loader:
            optimizer.zero_grad()
            
            # 순전파
            outputs = model(images)
            loss = criterion(outputs, labels.float().unsqueeze(1))
            
            # 역전파 및 최적화
            loss.backward()
            optimizer.step()
            
            running_loss += loss.item()
            
            # 정확도 계산 (logits 기준: 0 이상이면 양성)
            predicted = (outputs >= 0.0).float()
            total += labels.size(0)
            correct += (predicted.squeeze() == labels.float()).sum().item()
            
        train_epoch_loss = running_loss / len(train_loader)
        train_epoch_acc = 100 * correct / total

        model.eval()
        val_running_loss = 0.0
        val_correct = 0
        val_total = 0
        with torch.no_grad():
            for val_images, val_labels in val_loader:
                val_outputs = model(val_images)
                val_loss = criterion(val_outputs, val_labels.float().unsqueeze(1))
                val_running_loss += val_loss.item()

                val_predicted = (val_outputs >= 0.0).float()  # logits 기준
                val_total += val_labels.size(0)
                val_correct += (val_predicted.squeeze() == val_labels.float()).sum().item()

        val_epoch_loss = val_running_loss / len(val_loader)
        val_epoch_acc = 100 * val_correct / val_total

        train_loss_history.append(train_epoch_loss)
        train_acc_history.append(train_epoch_acc)
        val_loss_history.append(val_epoch_loss)
        val_acc_history.append(val_epoch_acc)

        scheduler.step(val_epoch_loss)  # Val Loss 기반 학습률 조정
        current_lr = optimizer.param_groups[0]['lr']

        print(
            f"Epoch [{epoch+1}/{epochs}] "
            f"Train Loss: {train_epoch_loss:.4f}, Train Acc: {train_epoch_acc:.2f}% | "
            f"Val Loss: {val_epoch_loss:.4f}, Val Acc: {val_epoch_acc:.2f}% | "
            f"LR: {current_lr:.6f}"
        )

        if val_epoch_acc > best_val_acc:
            best_val_acc = val_epoch_acc
            torch.save(model.state_dict(), 'person_classifier_best_acc.pth')
            print(f"  → 최고 Val Acc 모델 저장 (Val Acc: {best_val_acc:.2f}%)")

        # Early Stopping 체크
        if val_epoch_loss < best_val_loss:
            best_val_loss = val_epoch_loss
            early_stop_counter = 0
            plateau_start_epoch = None
            torch.save(model.state_dict(), 'person_classifier.pth')  # 최적 모델 저장
            print(f"  → 최적 모델 저장 (Val Loss: {best_val_loss:.4f})")
        else:
            early_stop_counter += 1
            if early_stop_counter == 1:
                plateau_start_epoch = epoch + 1
                print(f"  → Plateau 시작: epoch {plateau_start_epoch}")
            print(f"  → Plateau 진행: {early_stop_counter}/{early_stop_patience}")
            if early_stop_counter >= early_stop_patience:
                print(f"\nEarly Stopping: {early_stop_patience} epoch 동안 개선 없음. 학습 종료.")
                break

    print(f"\n학습 완료. 최적 Val Loss: {best_val_loss:.4f}, 최고 Val Acc: {best_val_acc:.2f}%")

    plt.figure(figsize=(10, 4))

    plt.subplot(1, 2, 1)
    actual_epochs = len(train_loss_history)
    plt.plot(range(1, actual_epochs + 1), train_loss_history, marker='o', label='Train Loss')
    plt.plot(range(1, actual_epochs + 1), val_loss_history, marker='o', label='Val Loss')
    plt.title('Train vs Val Loss')
    plt.xlabel('Epoch')
    plt.ylabel('Loss')
    plt.grid(True, alpha=0.3)
    plt.legend()

    plt.subplot(1, 2, 2)
    plt.plot(range(1, actual_epochs + 1), train_acc_history, marker='o', color='orange', label='Train Acc')
    plt.plot(range(1, actual_epochs + 1), val_acc_history, marker='o', color='green', label='Val Acc')
    plt.title('Train vs Val Accuracy')
    plt.xlabel('Epoch')
    plt.ylabel('Accuracy (%)')
    plt.grid(True, alpha=0.3)
    plt.legend()

    plt.tight_layout()
    plt.savefig('training_curves.png', dpi=150)
    plt.close()

    print("모델 학습 및 저장 완료!")
    print("그래프 저장 완료: training_curves.png")