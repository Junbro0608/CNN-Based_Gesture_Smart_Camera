import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import DataLoader
from torchvision import datasets, transforms

# 1. 데이터 전처리 및 데이터로더 설정
transform = transforms.Compose([
    transforms.Resize((128, 128)),  # 이미지를 일정한 크기로 통일
    transforms.ToTensor(),          # 텐서로 변환 (0~1 범위로 정규화)
])

train_dataset = datasets.ImageFolder(root='./dataset/train', transform=transform)
train_loader = DataLoader(train_dataset, batch_size=32, shuffle=True)

# 2. 직접 쌓는 커스텀 CNN 모델 정의 (이진 분류용)
class PersonClassifierCNN(nn.Module):
    def __init__(self):
        super(PersonClassifierCNN, self).__init__()
        # 특징 추출부 (Feature Extractor)
        self.features = nn.Sequential(
            nn.Conv2d(3, 32, kernel_size=3, padding=1),
            nn.ReLU(),
            nn.MaxPool2d(2, 2), # 128 -> 64
            
            nn.Conv2d(32, 64, kernel_size=3, padding=1),
            nn.ReLU(),
            nn.MaxPool2d(2, 2), # 64 -> 32
            
            nn.Conv2d(64, 128, kernel_size=3, padding=1),
            nn.ReLU(),
            nn.MaxPool2d(2, 2)  # 32 -> 16
        )
        
        # 분류기 (Classifier)
        self.classifier = nn.Sequential(
            nn.Flatten(),
            nn.Linear(128 * 16 * 16, 256),
            nn.ReLU(),
            nn.Dropout(0.5),
            nn.Linear(256, 1),
            nn.Sigmoid() # 0과 1 사이의 확률값 출력 (사람일 확률)
        )

    def forward(self, x):
        x = self.features(x)
        x = self.classifier(x)
        return x

model = PersonClassifierCNN()

# 3. 손실 함수 및 옵티마이저 설정
criterion = nn.BCELoss() # 이진 교차 엔트로피 손실
optimizer = optim.Adam(model.parameters(), lr=0.001)

# 4. 모델 학습 루프
epochs = 10
model.train()

for epoch in range(epochs):
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
        
        # 정확도 계산
        predicted = (outputs >= 0.5).float()
        total += labels.size(0)
        correct += (predicted.squeeze() == labels.float()).sum().item()
        
    epoch_loss = running_loss / len(train_loader)
    epoch_acc = 100 * correct / total
    print(f"Epoch [{epoch+1}/{epochs}] - Loss: {epoch_loss:.4f}, Accuracy: {epoch_acc:.2f}%")

# 학습 완료된 모델 저장
torch.save(model.state_dict(), 'person_classifier.pth')
print("모델 학습 및 저장 완료!")