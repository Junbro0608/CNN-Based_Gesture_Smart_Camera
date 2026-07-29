import torch
import torch.nn as nn
from torch.utils.data import DataLoader
from torchvision import datasets, transforms
import matplotlib.pyplot as plt
import numpy as np

# ==========================================
# 1. 모델 구조 정의 (학습 때와 100% 동일해야 함)
# ==========================================
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

# ==========================================
# 2. 기본 설정 및 데이터로더 준비
# ==========================================
device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(f'사용 중인 디바이스: {device}')

# 가중치 파일 경로 및 Validation 데이터 경로
WEIGHT_PATH = 'person_classifier.pth'
VAL_DATA_DIR = './dataset/val'

# 학습 코드에 있던 전처리(Transform) 그대로 사용
val_transform = transforms.Compose([
    transforms.Grayscale(num_output_channels=1),
    transforms.Resize((64, 64)),
    transforms.ToTensor(),
    transforms.Normalize(mean=[0.5], std=[0.5]),
])

val_dataset = datasets.ImageFolder(root=VAL_DATA_DIR, transform=val_transform)
val_loader = DataLoader(val_dataset, batch_size=32, shuffle=True) # 시각화를 위해 shuffle=True 설정

class_names = val_dataset.classes # 예: ['non_person', 'person']
print(f"클래스 목록: {class_names}")

# ==========================================
# 3. 모델 로드
# ==========================================
model = PersonClassifierCNN().to(device)
model.load_state_dict(torch.load(WEIGHT_PATH, map_location=device))
model.eval() # 평가 모드 (필수)

# ==========================================
# 4. 전체 Validation 데이터셋 평가
# ==========================================
print("\n[전체 Validation 데이터 평가 시작]")
correct = 0
total = 0

with torch.no_grad():
    for images, labels in val_loader:
        images = images.to(device)
        labels = labels.to(device)

        outputs = model(images)
        # 출력이 0.0 이상이면 1(Person), 아니면 0(Non-Person)으로 판별
        predicted = (outputs >= 0.0).float().squeeze()
        
        total += labels.size(0)
        correct += (predicted == labels.float()).sum().item()

accuracy = 100 * correct / total
print(f"전체 테스트 이미지 개수: {total}장")
print(f"Validation 정확도(Accuracy): {accuracy:.2f}%")

# ==========================================
# 5. 결과 시각화 (눈으로 확인하기)
# ==========================================
print("\n[샘플 이미지 예측 결과 확인]")

# 배치 한 개(32장)만 가져와서 그 중 6장을 띄워봅니다.
dataiter = iter(val_loader)
images, labels = next(dataiter)

images = images.to(device)
with torch.no_grad():
    outputs = model(images)
    preds = (outputs >= 0.0).float().squeeze()
    probs = torch.sigmoid(outputs).squeeze() # 확률값 계산 (0~1)

# CPU로 데이터 가져오기
images = images.cpu()
labels = labels.cpu()
preds = preds.cpu()
probs = probs.cpu()

fig, axes = plt.subplots(2, 3, figsize=(10, 7))
axes = axes.flatten()

for i in range(6):
    img = images[i].squeeze()
    
    # Normalize 해제 (-1~1 -> 0~1)해서 이미지가 제대로 보이도록 복원
    img = img * 0.5 + 0.5 
    
    true_label = class_names[int(labels[i].item())]
    pred_label = class_names[int(preds[i].item())]
    prob = probs[i].item() * 100
    
    axes[i].imshow(img, cmap='gray')
    
    # 맞췄으면 파란색, 틀렸으면 빨간색 텍스트
    color = 'blue' if true_label == pred_label else 'red'
    axes[i].set_title(f"Pred: {pred_label}\n({prob:.1f}%)\nTrue: {true_label}", color=color)
    axes[i].axis('off')

plt.tight_layout()
plt.show()