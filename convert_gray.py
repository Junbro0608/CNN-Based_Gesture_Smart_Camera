from PIL import Image

input_path = r"C:\Users\kccistc\Desktop\Marron.png"
output_path = r"C:\Users\kccistc\Desktop\Marron_gray.png"

image = Image.open(input_path)
gray_image = image.convert("L")  # 8-bit 그레이스케일 변환
gray_image.save(output_path)

print("크기:", gray_image.size)
print("모드:", gray_image.mode)
print("저장 위치:", output_path)