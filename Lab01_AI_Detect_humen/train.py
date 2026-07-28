import os
import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import DataLoader
from torchvision import datasets, transforms
import matplotlib.pyplot as plt

# GPU 사용 가능 여부 확인
device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(f'Using device: {device}')

if device.type == 'cuda':
    torch.backends.cudnn.benchmark = True

# 1. 데이터 전처리 및 데이터로더 설정
train_transform = transforms.Compose([
    transforms.Grayscale(num_output_channels=1),
    transforms.Resize((64, 64)),
    transforms.RandomHorizontalFlip(),
    transforms.RandomRotation(10),
    transforms.RandomAffine(0, translate=(0.05, 0.05)),
    transforms.ColorJitter(brightness=0.3, contrast=0.2),
    transforms.ToTensor(),
    transforms.Normalize(mean=[0.5], std=[0.5]),
])

val_transform = transforms.Compose([
    transforms.Grayscale(num_output_channels=1),
    transforms.Resize((64, 64)),
    transforms.ToTensor(),
    transforms.Normalize(mean=[0.5], std=[0.5]),
])

train_dataset = datasets.ImageFolder(root='./dataset/train', transform=train_transform)
train_loader = DataLoader(train_dataset, batch_size=32, shuffle=True, num_workers=0, pin_memory=(device.type == 'cuda'))

val_dataset = datasets.ImageFolder(root='./dataset/val', transform=val_transform)
val_loader = DataLoader(val_dataset, batch_size=32, shuffle=False, num_workers=0, pin_memory=(device.type == 'cuda'))

# 2. 모델 정의
class PersonClassifierCNN(nn.Module):
    def __init__(self):
        super(PersonClassifierCNN, self).__init__()
        self.features = nn.Sequential(
            nn.Conv2d(1, 16, kernel_size=3),
            nn.BatchNorm2d(16),
            nn.ReLU(),
            nn.MaxPool2d(2, 2),

            nn.Conv2d(16, 32, kernel_size=3),
            nn.BatchNorm2d(32),
            nn.ReLU(),
            nn.MaxPool2d(2, 2),
            nn.Dropout2d(0.1),

            nn.Conv2d(32, 64, kernel_size=3),
            nn.BatchNorm2d(64),
            nn.ReLU(),
            nn.MaxPool2d(2, 2),
            nn.Dropout2d(0.15)
        )

        self.classifier = nn.Sequential(
            nn.Flatten(),
            nn.Linear(64 * 6 * 6, 256),
            nn.ReLU(),
            nn.Dropout(0.5),
            nn.Linear(256, 1)
        )

    def forward(self, x):
        x = self.features(x)
        x = self.classifier(x)
        return x

    def _initialize_weights(self):
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
model._initialize_weights()
model.to(device)

# 3. 손실 함수 및 옵티마이저 설정 (Recall 가중치 제거 -> 기본 BCE Loss 사용)
criterion = nn.BCEWithLogitsLoss() 
optimizer = optim.Adam(model.parameters(), lr=0.001, weight_decay=1e-4)
scheduler = optim.lr_scheduler.ReduceLROnPlateau(optimizer, mode='min', patience=8, factor=0.5, min_lr=1e-5)

if __name__ == "__main__":
    # 4. 모델 학습 루프
    epochs = 30
    train_loss_history, train_acc_history = [], []
    val_loss_history, val_acc_history = [], []

    # 최적 모델 저장 기준 (Val Loss 기준)
    best_val_loss = float('inf')
    early_stop_patience = 15
    early_stop_counter = 0

    for epoch in range(epochs):
        model.train()
        running_loss, correct, total = 0.0, 0, 0
        
        for images, labels in train_loader:
            images, labels = images.to(device), labels.to(device)

            optimizer.zero_grad()
            outputs = model(images)
            loss = criterion(outputs, labels.float().unsqueeze(1))
            loss.backward()
            optimizer.step()
            
            running_loss += loss.item()
            predicted = (outputs >= 0.0).float()
            total += labels.size(0)
            correct += (predicted.squeeze() == labels.float()).sum().item()
            
        train_epoch_loss = running_loss / len(train_loader)
        train_epoch_acc = 100 * correct / total

        # 검증 단계
        model.eval()
        val_running_loss, val_correct, val_total = 0.0, 0, 0
        
        with torch.no_grad():
            for val_images, val_labels in val_loader:
                val_images, val_labels = val_images.to(device), val_labels.to(device)

                val_outputs = model(val_images)
                val_loss = criterion(val_outputs, val_labels.float().unsqueeze(1))
                val_running_loss += val_loss.item()

                val_predicted = (val_outputs >= 0.0).float()
                val_total += val_labels.size(0)
                val_correct += (val_predicted.squeeze() == val_labels.float()).sum().item()

        val_epoch_loss = val_running_loss / len(val_loader)
        val_epoch_acc = 100 * val_correct / val_total

        train_loss_history.append(train_epoch_loss)
        train_acc_history.append(train_epoch_acc)
        val_loss_history.append(val_epoch_loss)
        val_acc_history.append(val_epoch_acc)

        scheduler.step(val_epoch_loss)

        print(f"Epoch [{epoch+1}/{epochs}] "
              f"Train Loss: {train_epoch_loss:.4f}, Train Acc: {train_epoch_acc:.2f}% | "
              f"Val Loss: {val_epoch_loss:.4f}, Val Acc: {val_epoch_acc:.2f}%")

        # 최적 모델 저장 (가장 낮은 Val Loss 기준)
        if val_epoch_loss < best_val_loss:
            best_val_loss = val_epoch_loss
            early_stop_counter = 0
            torch.save(model.state_dict(), 'person_classifier.pth')
            print(f"  → 최적 모델 저장 (Val Loss: {best_val_loss:.4f})")
        else:
            early_stop_counter += 1
            if early_stop_counter >= early_stop_patience:
                print(f"\nEarly Stopping: {early_stop_patience} epoch 동안 개선 없음. 학습 종료.")
                break

    print(f"\n학습 완료. 최적 Val Loss: {best_val_loss:.4f}")

    # 이후 평가지표 그래프 그리는 코드 (기존과 동일하게 유지)
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