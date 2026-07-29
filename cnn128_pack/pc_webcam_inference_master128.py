import cv2
import torch
import torch.nn as nn
import numpy as np
import os

# ============================================================================
# ★ [최고 성능 89.23%] FPGA 호환 128x128 고성능 모델 정의 (Padding=1)
# (88,784 파라미터 / ~88.8 KB INT8 / Basys3 & Zybo 완벽 탑재)
# ============================================================================
class HumanDetectorCNN_FPGA128(nn.Module):
    def __init__(self):
        super(HumanDetectorCNN_FPGA128, self).__init__()
        self.conv1 = nn.Conv2d(1, 16, kernel_size=3, stride=1, padding=1, bias=False)
        self.bn1 = nn.BatchNorm2d(16)
        self.conv2 = nn.Conv2d(16, 32, kernel_size=3, stride=1, padding=1, bias=False)
        self.bn2 = nn.BatchNorm2d(32)
        self.conv3 = nn.Conv2d(32, 64, kernel_size=3, stride=1, padding=1, bias=False)
        self.bn3 = nn.BatchNorm2d(64)

        self.relu = nn.ReLU(inplace=True)
        self.pool = nn.MaxPool2d(kernel_size=2, stride=2)
        self.dropout = nn.Dropout(0.3)

        # Flatten: 64 * 4 * 4 = 1024
        self.fc1 = nn.Linear(64 * 4 * 4, 64)
        self.fc2 = nn.Linear(64, 1)

    def forward(self, x):
        x = self.pool(self.relu(self.bn1(self.conv1(x))))  # → 16 x 64 x 64
        x = self.pool(self.relu(self.bn2(self.conv2(x))))  # → 32 x 32 x 32
        x = self.pool(self.relu(self.bn3(self.conv3(x))))  # → 64 x 16 x 16
        x = self.pool(x)                                    # → 64 x  8 x  8 (Pool 4)
        x = self.pool(x)                                    # → 64 x  4 x  4 (Pool 5)
        x = x.reshape(x.size(0), -1)                        # → 1024
        x = self.dropout(x)
        x = self.relu(self.fc1(x))                           # → 64
        x = self.fc2(x)                                      # → 1
        return x.squeeze(1)

INPUT_SIZE = 128

def main():
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    model = HumanDetectorCNN_FPGA128().to(device)
    
    # 가중치 파일 위치 자동 검색 (root 또는 weights_and_hex 하위 폴더)
    weights_path = 'best_model_master128.pth'
    if not os.path.exists(weights_path):
        sub_path = os.path.join('weights_and_hex', 'best_model_master128.pth')
        if os.path.exists(sub_path):
            weights_path = sub_path
        else:
            print(f"❌ 가중치 파일 ('{weights_path}')이 없습니다.")
            print(f"   89.23% 최고 성능 모델 가중치 파일('best_model_master128.pth')을 넣거나 'weights_and_hex' 폴더를 확인하세요!")
            return

    try:
        model.load_state_dict(torch.load(weights_path, map_location=device))
        model.eval()
        print(f"✅ 128x128 89.23% 최고 성능 모델 가중치 로드 성공! ({weights_path})")
    except Exception as e:
        print(f"❌ 모델 가중치 로드 실패: {e}")
        return

    cap = cv2.VideoCapture(0)
    if not cap.isOpened():
        print("❌ 웹캠을 열 수 없습니다.")
        return

    win_name = 'Webcam Human Detection (128x128 89.23% Master Model)'
    cv2.namedWindow(win_name)
    cv2.createTrackbar('Threshold (%)', win_name, 50, 95, lambda x: None)

    print("🎥 128x128 89.23% 최고 성능 웹캠 추론 시작 (종료: 'q', 캡처: 'c')")

    while True:
        ret, frame = cap.read()
        if not ret: break

        clean_raw_frame = frame.copy()

        try:
            thresh_val = cv2.getTrackbarPos('Threshold (%)', win_name)
            threshold = max(0.1, thresh_val / 100.0) if thresh_val >= 0 else 0.50
        except:
            threshold = 0.50

        # 1. 1:1 정사각형 ROI 영역 크롭
        h, w, _ = frame.shape
        box_size = int(min(h, w) * 0.85)
        x1 = (w - box_size) // 2
        y1 = (h - box_size) // 2
        x2 = x1 + box_size
        y2 = y1 + box_size

        roi_frame = frame[y1:y2, x1:x2]
        cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 255, 255), 2)

        # 2. 전처리: 흑백 변환 & 128x128 리사이즈
        gray_roi = cv2.cvtColor(roi_frame, cv2.COLOR_BGR2GRAY)
        resized_frame = cv2.resize(gray_roi, (INPUT_SIZE, INPUT_SIZE), interpolation=cv2.INTER_AREA)

        # 텐서 변환 (1, 1, 128, 128) 및 정규화
        input_tensor = torch.FloatTensor(resized_frame).unsqueeze(0).unsqueeze(0) / 255.0
        input_tensor = input_tensor.to(device)

        # 3. 추론
        with torch.no_grad():
            output = model(input_tensor)
            prob = torch.sigmoid(output).item()

        # 4. 시각화
        is_human = prob >= threshold
        status_str = "Human" if is_human else "Background"
        label_text = f"{status_str}: {prob*100:.1f}% (Thresh: {threshold*100:.0f}%)"
        color = (0, 255, 0) if is_human else (0, 0, 255)

        cv2.putText(frame, f"[128x128 89.23% FPGA Model]", (20, 40), cv2.FONT_HERSHEY_SIMPLEX, 0.8, (255, 255, 255), 2)
        cv2.putText(frame, label_text, (20, 85), cv2.FONT_HERSHEY_SIMPLEX, 0.9, color, 3)

        # 우측 상단 128x128 입력 모니터링
        resized_display = cv2.resize(resized_frame, (256, 256), interpolation=cv2.INTER_NEAREST)
        resized_display_bgr = cv2.cvtColor(resized_display, cv2.COLOR_GRAY2BGR)
        frame[0:256, w-256:w] = resized_display_bgr
        cv2.rectangle(frame, (w-256, 0), (w, 256), color, 2)
        cv2.putText(frame, "Model Input (128x128)", (w-250, 240), cv2.FONT_HERSHEY_SIMPLEX, 0.6, (0, 255, 255), 1)

        cv2.imshow(win_name, frame)
        key = cv2.waitKey(1) & 0xFF
        if key == ord('q'):
            break
        elif key == ord('c'):
            save_dir = r'D:\CNN_TEST\my_person_photos'
            os.makedirs(save_dir, exist_ok=True)
            count = len(os.listdir(save_dir))
            filename = os.path.join(save_dir, f'my_person_{count+1:03d}.jpg')
            cv2.imwrite(filename, clean_raw_frame)
            print(f"📸 캡처 완료: {filename} (총 {count+1}장)")

    cap.release()
    cv2.destroyAllWindows()

if __name__ == '__main__':
    main()
