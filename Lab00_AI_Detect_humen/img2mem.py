from pathlib import Path

import numpy as np
from PIL import Image


def find_workspace_root(start: Path):
	for parent in [start, *start.parents]:
		if (parent / "Lab00_AI_Detect_humen").exists() or (parent / "Lab01_AI_Detect_humen").exists():
			return parent
	raise FileNotFoundError("Could not locate workspace root containing 'Lab00_AI_Detect_humen' or 'Lab01_AI_Detect_humen'.")


ROOT_DIR = find_workspace_root(Path(__file__).resolve())
DATASET_DIR = ROOT_DIR / "Lab00_AI_Detect_humen" / "save_pt_v3" / "dataset_lfw_real"

OUT_DIR = ROOT_DIR / "Lab00_AI_Detect_humen" / "save_pt_v3" / "mem_out_dataset_lfw_real"

IMAGE_SIZE = (128, 128)


def list_image_files(folder: Path):
	files = []
	for ext in ("*.jpg", "*.jpeg", "*.png", "*.bmp"):
		files.extend(folder.rglob(ext))
	return sorted(files)


def preprocess_to_int8(image_path: Path):
	img = Image.open(image_path).convert("L").resize(IMAGE_SIZE, Image.Resampling.BILINEAR)
	arr = np.asarray(img, dtype=np.uint8)
	return (arr.astype(np.int16) - 128).astype(np.int8)


def write_mem_file(path: Path, int8_arr: np.ndarray):
	flat = int8_arr.flatten()
	with path.open("w", encoding="ascii") as f:
		for value in flat:
			f.write(f"{int(value)}\n")


def main():
	splits = ["train", "val"]
	classes = ["person", "non_person"]

	if not DATASET_DIR.exists():
		raise FileNotFoundError(f"Dataset directory not found: {DATASET_DIR}")

	OUT_DIR.mkdir(parents=True, exist_ok=True)
	stats = {}

	for split in splits:
		for cls in classes:
			src_dir = DATASET_DIR / split / cls
			if not src_dir.exists():
				stats[(split, cls)] = 0
				continue

			files = list_image_files(src_dir)
			stats[(split, cls)] = len(files)

			dst_dir = OUT_DIR / split / cls
			dst_dir.mkdir(parents=True, exist_ok=True)

			for i, src in enumerate(files):
				out_file = dst_dir / f"{cls}{i}.mem"
				write_mem_file(out_file, preprocess_to_int8(src))

	total = sum(stats.values())
	print(f"Generated total {total} mem files.")
	for split in splits:
		for cls in classes:
			print(f"  {split}/{cls}: {stats[(split, cls)]}")
	print(f"Output directory: {OUT_DIR}")


if __name__ == "__main__":
	main()
