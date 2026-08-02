from __future__ import annotations

import argparse
from pathlib import Path

import numpy as np
from PIL import Image, ImageDraw


def load_mem_values(mem_path: Path, base: int, signed_bits: int) -> np.ndarray:
	values: list[int] = []
	with mem_path.open("r", encoding="ascii") as handle:
		for line in handle:
			line = line.strip()
			if not line:
				continue
			values.append(int(line, base))
	arr = np.asarray(values, dtype=np.int64)
	mask = (1 << signed_bits) - 1
	arr = arr & mask
	high_bit = 1 << (signed_bits - 1)
	arr = np.where(arr >= high_bit, arr - (1 << signed_bits), arr)
	return arr.astype(np.int8)


def mem_to_image(values_int8: np.ndarray, width: int, height: int) -> np.ndarray:
	norm = values_int8.astype(np.float32) / 127.0
	x01 = (norm * 0.5) + 0.5
	img_u8 = np.clip(np.round(x01 * 255.0), 0, 255).astype(np.uint8)
	return img_u8.reshape(height, width)


def build_contact_sheet(images: list[np.ndarray], grid_cols: int, label_prefix: str = "") -> Image.Image:
	if not images:
		raise ValueError("No images to display.")
	img_h, img_w = images[0].shape
	grid_rows = (len(images) + grid_cols - 1) // grid_cols
	sheet = Image.new("L", (grid_cols * img_w, grid_rows * img_h), color=0)
	draw = ImageDraw.Draw(sheet)
	for index, image in enumerate(images):
		row = index // grid_cols
		col = index % grid_cols
		img = Image.fromarray(image, mode="L")
		sheet.paste(img, (col * img_w, row * img_h))
		draw.text((col * img_w + 2, row * img_h + 2), f"{label_prefix}{index}", fill=255)
	return sheet


def main() -> None:
	parser = argparse.ArgumentParser(description="Render 16 int8 mem tiles as a contact sheet.")
	parser.add_argument("mem", type=Path, help="Combined mem file.")
	parser.add_argument("--tile-width", type=int, required=True, help="Tile width in pixels.")
	parser.add_argument("--tile-height", type=int, required=True, help="Tile height in pixels.")
	parser.add_argument("--count", type=int, default=16, help="Number of tiles to render.")
	parser.add_argument("--base", type=int, default=16, help="Input mem radix (16 for $readmemh-style files).")
	parser.add_argument("--output", type=Path, default=None, help="Optional PNG output path.")
	args = parser.parse_args()

	values = load_mem_values(args.mem, args.base, 8)
	expected = args.count * args.tile_width * args.tile_height
	if values.size != expected:
		raise ValueError(f"Invalid mem length: expected {expected}, got {values.size}")

	tiles: list[np.ndarray] = []
	stride = args.tile_width * args.tile_height
	for index in range(args.count):
		chunk = values[index * stride : (index + 1) * stride]
		tiles.append(mem_to_image(chunk, args.tile_width, args.tile_height))

	grid_cols = 4 if args.count >= 4 else args.count
	sheet = build_contact_sheet(tiles, grid_cols)

	if args.output is not None:
		args.output.parent.mkdir(parents=True, exist_ok=True)
		sheet.save(args.output)
		print(f"Saved preview: {args.output}")
	else:
		print("No output path given; preview not saved.")


if __name__ == "__main__":
	main()