from train import PersonClassifierCNN
import cv2
import torch
import torch.nn as nn
from torchvision import transforms


# 2. 모델 로드 (양자화는 주로 CPU 환경에서 원활히 수행됩니다)
device = torch.device('cpu')
model = PersonClassifierCNN().to(device)

# FP32로 학습된 가중치 파일 로드
model.load_state_dict(torch.load('person_classifier_best_acc.pth', map_location=device))
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
    transforms.Grayscale(num_output_channels=1),
    transforms.Resize((156, 156)),
    transforms.ToTensor(),
    transforms.Normalize(mean=[0.5], std=[0.5]),
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

        # 학습과 동일하게 1채널로 전처리
        input_tensor = transform(frame).unsqueeze(0) # 배치 차원 추가

        # INT8 양자화 모델 추론
        output = quantized_model(input_tensor)
        person_prob = torch.sigmoid(output).item() # 사람일 확률
        no_person_prob = 1.0 - person_prob

        # 판단 기준 (0.5 이상이면 사람)
        if person_prob >= 0.5:
            text = f"INT8 Person (Person: {person_prob:.2f}, NoPerson: {no_person_prob:.2f})"
            color = (0, 255, 0) # 초록색
        else:
            text = f"INT8 No Person (Person: {person_prob:.2f}, NoPerson: {no_person_prob:.2f})"
            color = (0, 0, 255) # 빨간색

        # 화면에 결과 텍스트 표시
        cv2.putText(frame, text, (30, 50), cv2.FONT_HERSHEY_SIMPLEX, 1, color, 2)
        cv2.imshow("INT8 Quantized CNN Person Detection", frame)

        # 'q' 키를 누르면 종료
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

cap.release()
cv2.destroyAllWindows()