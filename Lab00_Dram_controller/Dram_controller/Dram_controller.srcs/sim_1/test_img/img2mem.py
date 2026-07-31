from pathlib import Path

import numpy as np
from PIL import Image


def find_workspace_root(start: Path):
	for parent in [start, *start.parents]:
		if (parent / "Lab01_AI_Detect_humen").exists():
			return parent
	raise FileNotFoundError("Could not locate workspace root containing 'Lab01_AI_Detect_humen'.")


ROOT_DIR = find_workspace_root(Path(__file__).resolve())
VAL_DIR = ROOT_DIR / "Lab01_AI_Detect_humen" / "save_dataset" / "val"
PERSON_DIR = VAL_DIR / "person"
NON_PERSON_DIR = VAL_DIR / "non_person"

OUT_DIR = Path(__file__).resolve().parent / "mem_out"

IMAGE_SIZE = (128, 128)


def list_image_files(folder: Path):
	files = []
	for ext in ("*.jpg", "*.jpeg", "*.png", "*.bmp"):
		files.extend(folder.glob(ext))
	return sorted(files)


def preprocess_to_int8(image_path: Path):
	img = Image.open(image_path).convert("L").resize(IMAGE_SIZE, Image.Resampling.BILINEAR)
	arr = np.asarray(img, dtype=np.float32) / 255.0

	# Same normalization used in training: (x - 0.5) / 0.5 => [-1, 1]
	norm = (arr - 0.5) / 0.5
	int8_arr = np.clip(np.round(norm * 127.0), -128, 127).astype(np.int8)
	return int8_arr


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
