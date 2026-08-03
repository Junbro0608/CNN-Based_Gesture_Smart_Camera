import cv2
import torch
import torch.nn as nn
import numpy as np
import os

# ============================================================================
# ★ 경량화 모델 v2 정의 (64x64 입력 → MaxPool 4회 → FC 512→32→1)
# Colab 학습 코드 (cnn_human_detection_colab_v2_light.py)와 100% 동일해야 함
# ============================================================================
class HumanDetectorCNN_Light(nn.Module):
    def __init__(self):
        super(HumanDetectorCNN_Light, self).__init__()
        self.conv1 = nn.Conv2d(1, 8, kernel_size=3, stride=1, padding=1, bias=False)
        self.bn1 = nn.BatchNorm2d(8)
        self.conv2 = nn.Conv2d(8, 16, kernel_size=3, stride=1, padding=1, bias=False)
        self.bn2 = nn.BatchNorm2d(16)
        self.conv3 = nn.Conv2d(16, 32, kernel_size=3, stride=1, padding=1, bias=False)
        self.bn3 = nn.BatchNorm2d(32)

        self.relu = nn.ReLU(inplace=True)
        self.pool = nn.MaxPool2d(kernel_size=2, stride=2)
        self.dropout = nn.Dropout(0.3)

        # ★ 512 (32 * 4 * 4) → 32 → 1
        self.fc1 = nn.Linear(32 * 4 * 4, 32)
        self.fc2 = nn.Linear(32, 1)

    def forward(self, x):
        x = self.pool(self.relu(self.bn1(self.conv1(x))))  # → 8  x 32 x 32
        x = self.pool(self.relu(self.bn2(self.conv2(x))))  # → 16 x 16 x 16
        x = self.pool(self.relu(self.bn3(self.conv3(x))))  # → 32 x  8 x  8
        x = self.pool(x)                                    # ★ → 32 x  4 x  4 (4번째 풀링)
        x = x.reshape(x.size(0), -1)                        # → 512
        x = self.dropout(x)
        x = self.relu(self.fc1(x))                           # → 32
        x = self.fc2(x)                                      # → 1
        return x.squeeze(1)

INPUT_SIZE = 64

def block_average_resize(img_array, target_h=64, target_w=64):
    src_h, src_w = img_array.shape[:2]
    block_h = src_h / target_h
    block_w = src_w / target_w
    output = np.zeros((target_h, target_w), dtype=np.float32)
    for i in range(target_h):
        for j in range(target_w):
            y_start, y_end = int(i * block_h), int((i + 1) * block_h)
            x_start, x_end = int(j * block_w), int((j + 1) * block_w)
            block = img_array[y_start:y_end, x_start:x_end]
            if block.size > 0:
                output[i, j] = np.mean(block)
    return output.astype(np.uint8)

def main():
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    model = HumanDetectorCNN_Light().to(device)
    
    # 1. 파일 확인 (best_model_light.pth 우선, 없으면 best_model.pth 확인)
    weights_path = 'best_model_light.pth'
    if not os.path.exists(weights_path):
        weights_path = 'best_model.pth'
    
    if not os.path.exists(weights_path):
        print(f"❌ 가중치 파일 ('best_model_light.pth')이 없습니다.")
        print(f"   Colab에서 다운로드받은 'best_model_light.pth'를 D:\\CNN_TEST 폴더에 넣어주세요.")
        return

    try:
        model.load_state_dict(torch.load(weights_path, map_location=device))
        model.eval()
        print(f"✅ 경량 모델 v2 가중치 로드 성공! ({weights_path})")
        print(f"   - 총 파라미터: 22,393개 (~22 KB)")
        print(f"   - 입력 크기: 64x64 Grayscale")
    except Exception as e:
        print(f"❌ 모델 가중치 로드 실패: {e}")
        print(f"   가중치 파일이 v2 경량 모델(512→32→1) 구조와 일치하는지 확인해 주세요.")
        return

    # 2. 웹캠 연결
    cap = cv2.VideoCapture(0)
    if not cap.isOpened():
        print("❌ 웹캠을 열 수 없습니다.")
        return

    # 트랙바 콜백 함수 (동적 임계값 조절)
    cv2.namedWindow('Webcam Human Detection (v2 Light Model)')
    cv2.createTrackbar('Threshold (%)', 'Webcam Human Detection (v2 Light Model)', 70, 95, lambda x: None)

    print("🎥 웹캠 추론 시작 (종료: 'q', 배경캡처: 's')")

    while True:
        ret, frame = cap.read()
        if not ret:
            print("❌ 프레임을 읽을 수 없습니다.")
            break

        # ★ 원본 프레임 보존 (텍스트/오버레이가 그려지기 전의 깨끗한 카메라 프레임)
        clean_raw_frame = frame.copy()

        # 트랙바에서 현재 임계값 읽기 (기본값 70%)
        try:
            thresh_val = cv2.getTrackbarPos('Threshold (%)', 'Webcam Human Detection (v2 Light Model)')
            threshold = max(0.5, thresh_val / 100.0) if thresh_val >= 0 else 0.70
        except:
            threshold = 0.70

        # 3. 전처리: Grayscale 변환 & 64x64 블록 평균 리사이즈
        gray_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
        resized_frame = block_average_resize(gray_frame, INPUT_SIZE, INPUT_SIZE)

        # 텐서 변환 (1, 1, 64, 64) 및 정규화 (0.0~1.0)
        input_tensor = torch.FloatTensor(resized_frame).unsqueeze(0).unsqueeze(0) / 255.0
        input_tensor = input_tensor.to(device)

        # 4. 추론
        with torch.no_grad():
            output = model(input_tensor)
            prob = torch.sigmoid(output).item()

        # 5. 시각화 (설정한 임계값 적용)
        is_human = prob >= threshold
        label_text = f"Human: {prob*100:.1f}%" if is_human else f"Background: {(1-prob)*100:.1f}%"
        color = (0, 255, 0) if is_human else (0, 0, 255)

        # 화면 상단 텍스트 출력
        cv2.putText(frame, f"[v2 Light Model 22KB]", (20, 40), cv2.FONT_HERSHEY_SIMPLEX, 0.8, (255, 255, 255), 2)
        cv2.putText(frame, label_text, (20, 85), cv2.FONT_HERSHEY_SIMPLEX, 1.0, color, 3)

        # 우측 상단에 모델이 실제로 보는 64x64 입력 이미지 표시 (확대 256x256)
        resized_display = cv2.resize(resized_frame, (256, 256), interpolation=cv2.INTER_NEAREST)
        resized_display_bgr = cv2.cvtColor(resized_display, cv2.COLOR_GRAY2BGR)
        h, w, _ = frame.shape
        frame[0:256, w-256:w] = resized_display_bgr
        cv2.rectangle(frame, (w-256, 0), (w, 256), color, 2)
        cv2.putText(frame, "Model Input (64x64)", (w-250, 240), cv2.FONT_HERSHEY_SIMPLEX, 0.6, (0, 255, 255), 1)

        cv2.imshow('Webcam Human Detection (v2 Light Model)', frame)
        key = cv2.waitKey(1) & 0xFF
        if key == ord('q'):
            break
        elif key == ord('c'):
            save_dir = r'D:\CNN_TEST\my_person_photos'
            os.makedirs(save_dir, exist_ok=True)
            count = len(os.listdir(save_dir))
            filename = os.path.join(save_dir, f'my_person_{count+1:03d}.jpg')
            # ★ 텍스트/네모 상자가 없는 깨끗한 원본 이미지(clean_raw_frame) 저장!
            cv2.imwrite(filename, clean_raw_frame)
            print(f"📸 깨끗한 원본 사람 사진 저장 완료: {filename} (총 {count+1}장)")

    cap.release()
    cv2.destroyAllWindows()

if __name__ == '__main__':
    main()
