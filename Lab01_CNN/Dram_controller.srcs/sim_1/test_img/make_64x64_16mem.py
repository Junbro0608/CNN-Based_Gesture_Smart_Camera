from __future__ import annotations

import argparse
import random
from pathlib import Path

import numpy as np
from PIL import Image


def find_workspace_root(start: Path) -> Path:
	for parent in [start, *start.parents]:
		if (parent / "Lab01_AI_Detect_humen").exists():
			return parent
	raise FileNotFoundError("Could not locate workspace root containing 'Lab01_AI_Detect_humen'.")


def collect_images(source_dir: Path) -> list[Path]:
	files = []
	for ext in ("*.jpg", "*.jpeg", "*.png", "*.bmp"):
		files.extend(source_dir.rglob(ext))
	return sorted(files)


def preprocess_to_int8(image_path: Path, image_size: tuple[int, int]) -> np.ndarray:
	img = Image.open(image_path).convert("L").resize(image_size, Image.Resampling.BILINEAR)
	arr = np.asarray(img, dtype=np.float32) / 255.0
	norm = (arr - 0.5) / 0.5
	return np.clip(np.round(norm * 127.0), -128, 127).astype(np.int8)


def to_hex(value: int, bits: int) -> str:
	mask = (1 << bits) - 1
	width = (bits + 3) // 4
	return f"{value & mask:0{width}X}"


def write_mem_file(path: Path, values: np.ndarray, bits: int) -> None:
	path.parent.mkdir(parents=True, exist_ok=True)
	with path.open("w", encoding="ascii") as handle:
		for value in values.flatten():
			handle.write(f"{to_hex(int(value), bits)}\n")


def pad_to_square(values: np.ndarray, src_w: int, src_h: int, pad: int) -> np.ndarray:
	if pad != src_w + 2 or pad != src_h + 2:
		raise ValueError("This helper currently expects a 1-pixel border around each tile.")
	result = np.zeros((pad, pad), dtype=np.int8)
	result[1:-1, 1:-1] = values.reshape(src_h, src_w)
	return result


def build_contact_sheet(values_list: list[np.ndarray], tile_w: int, tile_h: int, grid_cols: int) -> Image.Image:
	grid_rows = (len(values_list) + grid_cols - 1) // grid_cols
	mode = "RGB" if values_list and values_list[0].ndim == 3 else "L"
	sheet = Image.new(mode, (grid_cols * tile_w, grid_rows * tile_h), color=(0, 0, 0) if mode == "RGB" else 0)
	for index, values in enumerate(values_list):
		row = index // grid_cols
		col = index % grid_cols
		img_mode = "RGB" if values.ndim == 3 else "L"
		img = Image.fromarray(values.astype(np.uint8), mode=img_mode)
		sheet.paste(img, (col * tile_w, row * tile_h))
	return sheet


def save_preview_png(values_list: list[np.ndarray], out_file: Path, tile_w: int, tile_h: int) -> None:
	grid_cols = 4 if len(values_list) >= 4 else len(values_list)
	contact_sheet = build_contact_sheet(values_list, tile_w, tile_h, grid_cols)
	out_file.parent.mkdir(parents=True, exist_ok=True)
	contact_sheet.save(out_file)


def make_border_highlight(values66: np.ndarray) -> np.ndarray:
	# Show the border explicitly so zero-padding is visually obvious.
	gray = np.clip(values66.astype(np.int16) + 128, 0, 255).astype(np.uint8)
	rgb = np.stack([gray, gray, gray], axis=-1)
	rgb[0, :, :] = (255, 0, 0)
	rgb[-1, :, :] = (255, 0, 0)
	rgb[:, 0, :] = (255, 0, 0)
	rgb[:, -1, :] = (255, 0, 0)
	return rgb


def main() -> None:
	parser = argparse.ArgumentParser(description="Generate 64x64 int8 mem files for 16 tiles and their padded references.")
	parser.add_argument("--source-dir", type=Path, default=None, help="Folder containing source images.")
	parser.add_argument("--output-dir", type=Path, default=None, help="Output directory for mem files.")
	parser.add_argument("--count", type=int, default=16, help="Number of images to convert.")
	parser.add_argument("--seed", type=int, default=42, help="Random seed for optional sampling.")
	parser.add_argument("--sample", action="store_true", help="Randomly sample images instead of taking the first N sorted files.")
	parser.add_argument("--preview", action="store_true", help="Also save PNG contact sheets for source and padded images.")
	args = parser.parse_args()

	workspace_root = find_workspace_root(Path(__file__).resolve())
	source_dir = args.source_dir or (workspace_root / "Lab01_AI_Detect_humen" / "save_dataset" / "val")
	output_dir = args.output_dir or (Path(__file__).resolve().parent / "mem_out_64x64_16")

	image_size = (64, 64)
	pad_size = 66
	files = collect_images(source_dir)
	if len(files) < args.count:
		raise ValueError(f"Not enough images in {source_dir}: need {args.count}, found {len(files)}")

	if args.sample:
		rng = random.Random(args.seed)
		selected = sorted(rng.sample(files, args.count))
	else:
		selected = files[: args.count]

	output_dir.mkdir(parents=True, exist_ok=True)
	selected_manifest = output_dir / "selected_sources.txt"
	combined_source: list[np.ndarray] = []
	combined_padded: list[np.ndarray] = []
	combined_padded_border: list[np.ndarray] = []
	combined_padded_border_zoomed: list[np.ndarray] = []
	lines: list[str] = []

	for index, image_path in enumerate(selected):
		values64 = preprocess_to_int8(image_path, image_size)
		values66 = pad_to_square(values64, 64, 64, pad_size)
		combined_source.append(values64)
		combined_padded.append(values66)
		border_rgb = make_border_highlight(values66)
		combined_padded_border.append(border_rgb)
		combined_padded_border_zoomed.append(np.repeat(np.repeat(border_rgb, 4, axis=0), 4, axis=1))

		src_flat = values64.flatten()
		pad_flat = values66.flatten()
		raddr_flat = np.zeros(pad_flat.size, dtype=np.uint32)
		for row in range(pad_size):
			for col in range(pad_size):
				addr = row * pad_size + col
				if row == 0 or row == pad_size - 1 or col == 0 or col == pad_size - 1:
					raddr_flat[addr] = 0
				else:
					raddr_flat[addr] = index * 64 * 64 + (row - 1) * 64 + (col - 1)

		tile_name = f"tile_{index:02d}_{image_path.stem}"
		write_mem_file(output_dir / f"source_tiles/{tile_name}.mem", src_flat, 8)
		write_mem_file(output_dir / f"padded_tiles/{tile_name}_pad66.mem", pad_flat, 8)
		write_mem_file(output_dir / f"source_tiles/{tile_name}_data_raddr.mem", raddr_flat, 17)
		lines.append(f"{index:02d}: {image_path.as_posix()}")

	write_mem_file(output_dir / "data_64x64x16.mem", np.asarray(combined_source, dtype=np.int8), 8)
	write_mem_file(output_dir / "expected_pad_66x66x16.mem", np.asarray(combined_padded, dtype=np.int8), 8)

	# Build the combined address expectation as a flat 1-D array.
	combined_expected_raddr = np.zeros(pad_size * pad_size * args.count, dtype=np.uint32)
	for index, _image_path in enumerate(selected):
		base = index * pad_size * pad_size
		for row in range(pad_size):
			for col in range(pad_size):
				addr = base + row * pad_size + col
				if row == 0 or row == pad_size - 1 or col == 0 or col == pad_size - 1:
					combined_expected_raddr[addr] = 0
				else:
					combined_expected_raddr[addr] = index * 64 * 64 + (row - 1) * 64 + (col - 1)
	write_mem_file(output_dir / "expected_data_raddr_66x66x16.mem", combined_expected_raddr, 17)

	selected_manifest.write_text("\n".join(lines) + "\n", encoding="utf-8")

	if args.preview:
		save_preview_png(combined_source, output_dir / "preview_source_16.png", 64, 64)
		save_preview_png(combined_padded, output_dir / "preview_padded_16.png", pad_size, pad_size)
		save_preview_png(combined_padded_border, output_dir / "preview_padded_border_16.png", pad_size, pad_size)
		save_preview_png(combined_padded_border_zoomed, output_dir / "preview_padded_border_zoomed_16.png", pad_size * 4, pad_size * 4)

	print(f"Wrote {args.count} source tiles to {output_dir / 'source_tiles'}")
	print(f"Combined source mem: {output_dir / 'data_64x64x16.mem'}")
	print(f"Combined padded mem: {output_dir / 'expected_pad_66x66x16.mem'}")
	print(f"Combined expected data_raddr mem: {output_dir / 'expected_data_raddr_66x66x16.mem'}")


if __name__ == "__main__":
	main()