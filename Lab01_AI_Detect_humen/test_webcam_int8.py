from train import PersonClassifierCNN
import cv2
import torch
import torch.nn as nn
from torchvision import transforms


# 2. 모델 로드 (양자화는 주로 CPU 환경에서 원활히 수행됩니다)
device = torch.device('cpu')
model = PersonClassifierCNN().to(device)

# FP32로 학습된 가중치 파일 로드
model.load_state_dict(torch.load('person_classifier.pth', map_location=device))
model.eval()

print("FP32 모델 로드 완료. INT8 양자화(Dynamic Quantization) 적용 중...")

# 3. INT8 양자화 적용 (Linear 레이어 등을 INT8 정밀도로 변환)
quantized_model = torch.quantization.quantize_dynamic(
    model,  
    {nn.Linear},  # 양자화 대상 레이어 지정
    dtype=torch.qint8
)

print("INT8 양자화 완료!")

# 4. 이미지 전처리 파이프라인
transform = transforms.Compose([
    transforms.ToPILImage(),
    transforms.Resize((128, 128)),
    transforms.ToTensor(),
])

# 5. 웹캠 열기
cap = cv2.VideoCapture(0)

if not cap.isOpened():
    print("웹캠을 열 수 없습니다.")
    exit()

print("INT8 양자화 모델 웹캠 추론 시작! 종료하려면 'q'를 누르세요.")

with torch.no_grad():
    while cap.isOpened():
        ret, frame = cap.read()
        if not ret:
            print("프레임을 읽지 못했습니다.")
            break

        # OpenCV BGR -> RGB 변환 후 전처리
        rgb_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
        input_tensor = transform(rgb_frame).unsqueeze(0) # 배치 차원 추가

        # INT8 양자화 모델 추론
        output = quantized_model(input_tensor)
        prob = output.item() # 0~1 사이의 확률값

        # 판단 기준 (0.5 이상이면 사람)
        if prob >= 0.5:
            text = f"INT8 Person (Prob: {prob:.2f})"
            color = (0, 255, 0) # 초록색
        else:
            text = f"INT8 No Person (Prob: {1-prob:.2f})"
            color = (0, 0, 255) # 빨간색

        # 화면에 결과 텍스트 표시
        cv2.putText(frame, text, (30, 50), cv2.FONT_HERSHEY_SIMPLEX, 1, color, 2)
        cv2.imshow("INT8 Quantized CNN Person Detection", frame)

        # 'q' 키를 누르면 종료
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

cap.release()
cv2.destroyAllWindows()