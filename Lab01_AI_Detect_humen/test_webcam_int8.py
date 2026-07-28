import cv2
import torch
import torchvision.transforms as transforms
from PIL import Image
from person_classifier_model import PersonClassifierCNN

# ==========================================
# 1. 사용자 설정 및 모델 로드
# ==========================================
# TODO: 학습할 때 사용했던 본인의 모델 클래스를 임포트하세요.
# from your_model_file import PersonClassifierCNN

# 가중치 파일 경로
WEIGHT_PATH = 'person_classifier.pth' # 또는 'person_classifier_best_acc.pth'

device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
print(f"사용 중인 디바이스: {device}")

# 모델 초기화 및 가중치 로드
model = PersonClassifierCNN().to(device)
model.load_state_dict(torch.load(WEIGHT_PATH, map_location=device))
model.eval()  # 평가 모드로 전환 (BatchNorm, Dropout 비활성화)

# ==========================================
# 2. 이미지 전처리 설정 (학습할 때와 동일하게 맞춤)
# ==========================================
# 데이터셋 생성 시 128x128 해상도를 기준으로 했으므로 동일하게 리사이즈합니다.
transform = transforms.Compose([
    transforms.Resize((64, 64)),
    transforms.ToTensor(),
    # 학습 시 Normalize를 사용했다면 여기에 추가하세요.
    # transforms.Normalize(mean=[0.5, 0.5, 0.5], std=[0.5, 0.5, 0.5])
])

# ==========================================
# 3. 웹캠 캡처 및 실시간 추론
# ==========================================
cap = cv2.VideoCapture(0) # 0번(기본) 웹캠 열기

if not cap.isOpened():
    print("웹캠을 열 수 없습니다.")
    exit()

print("웹캠이 켜졌습니다. 종료하려면 'q' 키를 누르세요.")

while True:
    ret, frame = cap.read()
    if not ret:
        print("프레임을 읽어올 수 없습니다.")
        break

    # OpenCV 프레임(BGR)을 PIL 이미지(RGB)로 변환
    gray_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    pil_img = Image.fromarray(gray_frame)

    # 전처리 및 텐서 변환 (배치 차원 추가: [3, 128, 128] -> [1, 3, 128, 128])
    input_tensor = transform(pil_img).unsqueeze(0).to(device)

    # 모델 추론
    with torch.no_grad():
        output = model(input_tensor).squeeze()
        # BCEWithLogitsLoss를 썼으므로, 출력값에 Sigmoid를 씌워 0~1 사이의 확률로 변환
        probability = torch.sigmoid(output).item()

    # 결과 판별 (0.5 이상이면 Person으로 가정 - 학습 시 라벨링 기준에 따라 다를 수 있음)
    # Person 라벨이 1.0, Non-Person 라벨이 0.0이었다고 가정한 로직입니다.
    if probability >= 0.5:
        label_text = f"Person ({probability*100:.1f}%)"
        color = (0, 255, 0) # 초록색 텍스트
    else:
        label_text = f"Non-Person ({(1-probability)*100:.1f}%)"
        color = (0, 0, 255) # 빨간색 텍스트

    # 화면에 결과 텍스트 출력
    cv2.putText(frame, label_text, (20, 50), cv2.FONT_HERSHEY_SIMPLEX, 1.2, color, 3)

    # 결과 화면 보여주기
    cv2.imshow('Person Classifier Test', frame)

    # 'q' 키를 누르면 루프 탈출
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

# 자원 해제
cap.release()
cv2.destroyAllWindows()