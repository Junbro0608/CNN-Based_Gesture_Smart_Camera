import cv2
import torch
import torchvision.transforms as transforms
from PIL import Image
from person_classifier_model import PersonClassifierCNN

# ==========================================
# 1. 모델 설정 및 로드
# ==========================================
WEIGHT_PATH = 'person_classifier.pth'

device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
print(f"사용 중인 디바이스: {device}")

model = PersonClassifierCNN().to(device)
model.load_state_dict(torch.load(WEIGHT_PATH, map_location=device))
model.eval()

# ==========================================
# 2. 이미지 전처리 설정
# ==========================================
transform = transforms.Compose([
    transforms.Grayscale(num_output_channels=1),
    transforms.Resize((64, 64)),
    transforms.ToTensor(),
    transforms.Normalize(mean=[0.5], std=[0.5]),
])

# ==========================================
# 3. 웹캠 캡처 및 실시간 추론
# ==========================================
cap = cv2.VideoCapture(0)

if not cap.isOpened():
    print("웹캠을 열 수 없습니다.")
    exit()

print("웹캠이 켜졌습니다. 종료하려면 'q' 키를 누르세요.")
print("화면 중앙의 '파란색 네모 박스' 안에 사람을 비춰주세요!")

while True:
    ret, frame = cap.read()
    if not ret:
        print("프레임을 읽어올 수 없습니다.")
        break

    # 화면 크기 가져오기
    h, w, _ = frame.shape
    
    # 중앙 정사각형 박스 크기 계산 (화면 세로 길이 기준)
    box_size = min(h, w) - 100
    x1 = (w - box_size) // 2
    y1 = (h - box_size) // 2
    x2 = x1 + box_size
    y2 = y1 + box_size

    # 1. 화면 중앙에 파란색 가이드 박스 그리기
    cv2.rectangle(frame, (x1, y1), (x2, y2), (255, 0, 0), 2)

    # 2. 박스 안쪽 이미지만 잘라내기 (Crop)
    roi_frame = frame[y1:y2, x1:x2]

    # 3. 잘라낸 이미지를 흑백으로 변환 후 전처리
    gray_roi = cv2.cvtColor(roi_frame, cv2.COLOR_BGR2GRAY)
    pil_img = Image.fromarray(gray_roi)

    # 전처리 텐서 변환: [1, 1, 64, 64]
    input_tensor = transform(pil_img).unsqueeze(0).to(device)

    # 4. 모델 추론 (안전한 값 추출 방식 적용)
    with torch.no_grad():
        output = model(input_tensor) # 형태: [1, 1]
        logit = output.item()
        probability = torch.sigmoid(output).item()

    print(f"logit={logit:.4f}, prob={probability:.6f}")

    # 5. 결과 판별 및 텍스트 출력
    if probability >= 0.5:
        label_text = f"Person ({probability*100:.1f}%)"
        color = (0, 255, 0) # 초록색 텍스트
    else:
        label_text = f"Non-Person ({(1-probability)*100:.1f}%)"
        color = (0, 0, 255) # 빨간색 텍스트

    # 결과를 네모 박스 바로 위에 출력
    cv2.putText(frame, label_text, (x1, y1 - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.8, color, 2)

    # 결과 화면 보여주기
    cv2.imshow('Person Classifier Test', frame)

    # 'q' 키를 누르면 루프 탈출
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

# 자원 해제
cap.release()
cv2.destroyAllWindows()