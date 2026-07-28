from PIL import Image

input_path = r"C:\Users\kccistc\Desktop\Marron_gray.png"
output_path = r"C:\Users\kccistc\Desktop\Marron_gray.hex"

image = Image.open(input_path).convert("L")

if image.size != (128, 128):
    image = image.resize((128, 128))

pixels = list(image.getdata())

with open(output_path, "w") as file:
    for pixel in pixels:
        file.write(f"{pixel:02X}\n")

print("이미지 크기:", image.size)
print("픽셀 개수:", len(pixels))
print("첫 번째 픽셀 16개:", pixels[:16])
print("저장 위치:", output_path)