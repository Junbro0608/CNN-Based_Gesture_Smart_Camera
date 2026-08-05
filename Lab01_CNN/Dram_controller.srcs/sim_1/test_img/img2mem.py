from pathlib import Path

import numpy as np
from PIL import Image


def find_workspace_root(start: Path):
	for parent in [start, *start.parents]:
		if (parent / "Lab00_AI_Detect_humen").exists() or (parent / "Lab01_AI_Detect_humen").exists():
			return parent
	raise FileNotFoundError("Could not locate workspace root containing 'Lab00_AI_Detect_humen' or 'Lab01_AI_Detect_humen'.")


ROOT_DIR = find_workspace_root(Path(__file__).resolve())
if (ROOT_DIR / "Lab00_AI_Detect_humen").exists():
	VAL_DIR = ROOT_DIR / "Lab00_AI_Detect_humen" / "save_dataset" / "val"
else:
	VAL_DIR = ROOT_DIR / "Lab01_AI_Detect_humen" / "save_dataset" / "val"
PERSON_DIR = VAL_DIR / "person"
NON_PERSON_DIR = VAL_DIR / "non_person"

OUT_DIR = Path(__file__).resolve().parent / "mem_out"

IMAGE_SIZE = (128, 128)


def list_image_files(folder: Path):
	files = []
	for ext in ("*.jpg", "*.jpeg", "*.png", "*.bmp"):
		files.extend(folder.rglob(ext))
	return sorted(files)


def preprocess_to_int8(image_path: Path):
	# Match inference path exactly:
	# 1) Gray = (77*R + 150*G + 29*B + 128) >> 8
	# 2) q_out = ((Gray * 127) + 128) >> 8  (range: 0..127)
	img = Image.open(image_path).convert("RGB").resize(IMAGE_SIZE, Image.Resampling.BILINEAR)
	rgb = np.asarray(img, dtype=np.uint16)
	r = rgb[..., 0]
	g = rgb[..., 1]
	b = rgb[..., 2]

	gray_sum = (77 * r) + (150 * g) + (29 * b) + 128
	y = gray_sum >> 8

	q_inter = (y * 127) + 128
	q_out = (q_inter >> 8).astype(np.uint8)
	return q_out.astype(np.int8)


def write_mem_file(path: Path, int8_arr: np.ndarray):
	flat = int8_arr.flatten()
	with path.open("w", encoding="ascii") as f:
		for value in flat:
			f.write(f"{int(value)}\n")


def main():
	person_files = list_image_files(PERSON_DIR)
	nonperson_files = list_image_files(NON_PERSON_DIR)

	OUT_DIR.mkdir(parents=True, exist_ok=True)

	for i, src in enumerate(person_files):
		out_file = OUT_DIR / f"person{i}.mem"
		write_mem_file(out_file, preprocess_to_int8(src))

	for i, src in enumerate(nonperson_files):
		out_file = OUT_DIR / f"nonperson{i}.mem"
		write_mem_file(out_file, preprocess_to_int8(src))

	print(f"Generated {len(person_files)} person mem files and {len(nonperson_files)} nonperson mem files.")
	print(f"Output directory: {OUT_DIR}")


if __name__ == "__main__":
	main()
