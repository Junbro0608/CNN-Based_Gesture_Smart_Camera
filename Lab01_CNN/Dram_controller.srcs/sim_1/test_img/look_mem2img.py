from pathlib import Path

import numpy as np
from PIL import Image


IMAGE_H = 128
IMAGE_W = 128

SCRIPT_DIR = Path(__file__).resolve().parent

# Default paths for quick verification.
DEFAULT_MEM = SCRIPT_DIR / "mem_out" / "person0.mem"
DEFAULT_OUT = SCRIPT_DIR / "mem_out" / "person0_restored.png"


def load_mem_values(mem_path: Path) -> np.ndarray:
	values = []
	with mem_path.open("r", encoding="ascii") as f:
		for line in f:
			line = line.strip()
			if not line:
				continue
			values.append(int(line))

	arr = np.asarray(values, dtype=np.int16)
	if arr.size != IMAGE_H * IMAGE_W:
		raise ValueError(
			f"Invalid mem length: expected {IMAGE_H * IMAGE_W}, got {arr.size}"
		)

	if np.any(arr < -128) or np.any(arr > 127):
		raise ValueError("Found values outside signed int8 range [-128, 127].")

	return arr.astype(np.int8)


def mem_to_image(values_int8: np.ndarray) -> np.ndarray:
	# Inverse of preprocessing in img2mem.py:
	# int8 = round(norm * 127), norm = (x - 0.5) / 0.5
	norm = values_int8.astype(np.float32) / 127.0
	x01 = (norm * 0.5) + 0.5
	img_u8 = np.clip(np.round(x01 * 255.0), 0, 255).astype(np.uint8)
	return img_u8.reshape(IMAGE_H, IMAGE_W)


def main(mem_file: Path = DEFAULT_MEM, out_file: Path = DEFAULT_OUT):
	if not mem_file.exists():
		raise FileNotFoundError(f"mem file not found: {mem_file}")

	values_int8 = load_mem_values(mem_file)
	img_u8 = mem_to_image(values_int8)

	out_file.parent.mkdir(parents=True, exist_ok=True)
	Image.fromarray(img_u8, mode="L").save(out_file)

	print(f"Source mem: {mem_file}")
	print(f"Saved image: {out_file}")


if __name__ == "__main__":
	main()
