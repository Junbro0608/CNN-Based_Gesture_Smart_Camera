import cv2
import torch
import torchvision.transforms as transforms
from PIL import Image
import numpy as np
import os
from person_classifier_model import PersonClassifierCNN

# ============================================================================
# 학습 데이터셋(dataset_combined)과 100% 동일한 전처리 및 ROI Crop 추론 스크립트
# ============================================================================
WEIGHT_PATH = 'person_classifier.pth'

device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(f"사용 중인 디바이스: {device}")

model = PersonClassifierCNN().to(device)

if not os.path.exists(WEIGHT_PATH):
    print(f"[오류] 가중치 파일 ('{WEIGHT_PATH}')이 없습니다.")
    exit()

try:
    model.load_state_dict(torch.load(WEIGHT_PATH, map_location=device))
    model.eval()
    print(f"[성공] 모델 가중치 로드 성공! ({WEIGHT_PATH})")
except Exception as e:
    print(f"[오류] 모델 가중치 로드 실패: {e}")
    exit()

# train.py와 100% 동일한 PyTorch Transform 전처리
transform = transforms.Compose([
    transforms.Grayscale(num_output_channels=1),
    transforms.Resize((64, 64)),
    transforms.ToTensor(),
    transforms.Normalize(mean=[0.5], std=[0.5]),
])

def main():
    cap = cv2.VideoCapture(0)
    if not cap.isOpened():
        print("0번 웹캠 연결 실패, 1번 웹캠으로 시도합니다.")
        cap = cv2.VideoCapture(1)

    if not cap.isOpened():
        print("❌ 웹캠을 열 수 없습니다.")
        return

    window_name = 'Person Classifier Test'
    cv2.namedWindow(window_name)
    cv2.createTrackbar('Threshold (%)', window_name, 50, 95, lambda x: None)

    print("\n==========================================")
    print(" 웹캠 실시간 감지 추론 시작")
    print(" [m] 키: 박스 영역 Crop 모드 <-> 전체 화면 모드 전환")
    print(" [q] 키: 프로그램 종료")
    print("==========================================\n")

    use_roi_mode = True  # 기본값: 학습 데이터셋과 동일한 ROI Box Crop 모드

    while True:
        ret, frame = cap.read()
        if not ret or frame is None:
            print("프레임을 읽을 수 없습니다.")
            break

        h, w, _ = frame.shape

        if use_roi_mode:
            # 학습 데이터셋(dataset_combined)과 동일하게 사람 영역(중앙 정사각형) 잘라내기
            box_size = int(min(h, w) * 0.8)
            x1 = (w - box_size) // 2
            y1 = (h - box_size) // 2
            x2 = x1 + box_size
            y2 = y1 + box_size

            cv2.rectangle(frame, (x1, y1), (x2, y2), (255, 255, 0), 2)
            target_roi = frame[y1:y2, x1:x2]
            mode_text = "ROI Crop Mode (Recommended)"
        else:
            target_roi = frame
            mode_text = "Full Frame Mode"

        # PyTorch transform 전처리 (Grayscale -> 64x64 -> Normalize [-1, 1])
        rgb_roi = cv2.cvtColor(target_roi, cv2.COLOR_BGR2RGB)
        pil_img = Image.fromarray(rgb_roi)
        input_tensor = transform(pil_img).unsqueeze(0).to(device)

        # 모델 추론
        with torch.no_grad():
            output = model(input_tensor)
            prob = torch.sigmoid(output).item()

        # 임계값 읽기
        try:
            thresh_val = cv2.getTrackbarPos('Threshold (%)', window_name)
            threshold = max(0.1, thresh_val / 100.0) if thresh_val >= 0 else 0.50
        except:
            threshold = 0.50

        # 시각화
        is_person = prob >= threshold
        label_text = f"Person ({prob * 100:.1f}%)" if is_person else f"Non-Person ({(1 - prob) * 100:.1f}%)"
        color = (0, 255, 0) if is_person else (0, 0, 255)

        # 콘솔 출력 (실시간 확률 모니터링)
        print(f"[{mode_text}] Prob: {prob*100:.2f}% | Output: {'PERSON' if is_person else 'NON-PERSON'}")

        # 화면 시각화
        cv2.putText(frame, f"[Person Classifier CNN]", (20, 40), cv2.FONT_HERSHEY_SIMPLEX, 0.7, (255, 255, 255), 2)
        cv2.putText(frame, label_text, (20, 85), cv2.FONT_HERSHEY_SIMPLEX, 1.0, color, 3)
        cv2.putText(frame, f"Mode: {mode_text} (Press 'm' to switch)", (20, h - 20), cv2.FONT_HERSHEY_SIMPLEX, 0.55, (255, 255, 255), 1)

        # 우측 상단 64x64 모델 입력 미리보기
        gray_roi = cv2.cvtColor(target_roi, cv2.COLOR_BGR2GRAY)
        resized_64 = cv2.resize(gray_roi, (64, 64))
        resized_display = cv2.resize(resized_64, (256, 256), interpolation=cv2.INTER_NEAREST)
        resized_display_bgr = cv2.cvtColor(resized_display, cv2.COLOR_GRAY2BGR)
        frame[0:256, w - 256:w] = resized_display_bgr
        cv2.rectangle(frame, (w - 256, 0), (w, 256), color, 2)
        cv2.putText(frame, "Model Input (64x64)", (w - 250, 240), cv2.FONT_HERSHEY_SIMPLEX, 0.6, (0, 255, 255), 1)

        cv2.imshow(window_name, frame)

        key = cv2.waitKey(1) & 0xFF
        if key == ord('q'):
            break
        elif key == ord('m'):
            use_roi_mode = not use_roi_mode
            print(f"\n[모드 변경] -> {'ROI Crop 모드' if use_roi_mode else '전체 화면 모드'}\n")

    cap.release()
    cv2.destroyAllWindows()

if __name__ == '__main__':
    main()