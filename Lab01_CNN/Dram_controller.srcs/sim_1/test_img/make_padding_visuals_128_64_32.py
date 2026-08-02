from __future__ import annotations

import argparse
from pathlib import Path

import numpy as np
from PIL import Image


def find_workspace_root(start: Path) -> Path:
    for parent in [start, *start.parents]:
        if (parent / "Lab01_AI_Detect_humen").exists():
            return parent
    raise FileNotFoundError("Could not locate workspace root containing 'Lab01_AI_Detect_humen'.")


def collect_images(source_dir: Path) -> list[Path]:
    files: list[Path] = []
    for ext in ("*.jpg", "*.jpeg", "*.png", "*.bmp"):
        files.extend(source_dir.rglob(ext))
    return sorted(files)


def preprocess_to_int8(image_path: Path, size_n: int) -> np.ndarray:
    img = Image.open(image_path).convert("L").resize((size_n, size_n), Image.Resampling.BILINEAR)
    arr = np.asarray(img, dtype=np.float32) / 255.0
    norm = (arr - 0.5) / 0.5
    return np.clip(np.round(norm * 127.0), -128, 127).astype(np.int8)


def int8_to_u8(values: np.ndarray) -> np.ndarray:
    return np.clip(values.astype(np.int16) + 128, 0, 255).astype(np.uint8)


def make_padded_tile(src: np.ndarray) -> np.ndarray:
    size_n = src.shape[0]
    out = np.zeros((size_n + 2, size_n + 2), dtype=np.int8)
    out[1:-1, 1:-1] = src
    return out


def make_red_border_overlay(padded: np.ndarray) -> np.ndarray:
    gray = int8_to_u8(padded)
    rgb = np.stack([gray, gray, gray], axis=-1)
    rgb[0, :, :] = (255, 0, 0)
    rgb[-1, :, :] = (255, 0, 0)
    rgb[:, 0, :] = (255, 0, 0)
    rgb[:, -1, :] = (255, 0, 0)
    return rgb


def resize_nearest(arr: np.ndarray, scale: int) -> np.ndarray:
    if arr.ndim == 2:
        return np.repeat(np.repeat(arr, scale, axis=0), scale, axis=1)
    return np.repeat(np.repeat(arr, scale, axis=0), scale, axis=1)


def make_panel(src: np.ndarray, scale: int) -> Image.Image:
    padded = make_padded_tile(src)
    overlay = make_red_border_overlay(padded)

    src_u8 = int8_to_u8(src)
    padded_u8 = int8_to_u8(padded)

    src_big = resize_nearest(src_u8, scale)
    padded_big = resize_nearest(padded_u8, scale)
    overlay_big = resize_nearest(overlay, scale)

    # Convert source to RGB for consistent panel composition.
    src_rgb = np.stack([src_big, src_big, src_big], axis=-1)
    padded_rgb = np.stack([padded_big, padded_big, padded_big], axis=-1)

    gap = 12
    title_bar = 28
    h = overlay_big.shape[0] + title_bar
    w = src_rgb.shape[1] + gap + padded_rgb.shape[1] + gap + overlay_big.shape[1]

    panel = Image.new("RGB", (w, h), color=(18, 18, 18))

    x0 = 0
    x1 = src_rgb.shape[1] + gap
    x2 = x1 + padded_rgb.shape[1] + gap

    panel.paste(Image.fromarray(src_rgb, mode="RGB"), (x0, title_bar))
    panel.paste(Image.fromarray(padded_rgb, mode="RGB"), (x1, title_bar))
    panel.paste(Image.fromarray(overlay_big, mode="RGB"), (x2, title_bar))

    return panel


def save_individual_images(out_dir: Path, size_n: int, tile_name: str, src: np.ndarray, scale: int) -> None:
    padded = make_padded_tile(src)
    overlay = make_red_border_overlay(padded)

    src_u8 = int8_to_u8(src)
    padded_u8 = int8_to_u8(padded)

    Image.fromarray(src_u8, mode="L").save(out_dir / f"size{size_n}_source_{tile_name}.png")
    Image.fromarray(padded_u8, mode="L").save(out_dir / f"size{size_n}_padded_{tile_name}.png")
    Image.fromarray(overlay, mode="RGB").save(out_dir / f"size{size_n}_padded_border_{tile_name}.png")

    overlay_zoom = resize_nearest(overlay, scale)
    Image.fromarray(overlay_zoom, mode="RGB").save(out_dir / f"size{size_n}_padded_border_zoom_{tile_name}.png")


def main() -> None:
    parser = argparse.ArgumentParser(description="Create padding visualization from a real dataset image for 128/64/32.")
    parser.add_argument("--source-dir", type=Path, default=None, help="Image root folder. Default: val dataset folder.")
    parser.add_argument("--image", type=Path, default=None, help="Specific image file to use.")
    args = parser.parse_args()

    script_dir = Path(__file__).resolve().parent
    workspace_root = find_workspace_root(script_dir)
    source_dir = args.source_dir or (workspace_root / "Lab01_AI_Detect_humen" / "save_dataset" / "val")
    out_dir = script_dir / "mem_out_padding_visual"
    out_dir.mkdir(parents=True, exist_ok=True)

    if args.image is not None:
        image_path = args.image
    else:
        files = collect_images(source_dir)
        if not files:
            raise FileNotFoundError(f"No images found in {source_dir}")
        image_path = files[0]

    tile_name = image_path.stem
    (out_dir / "selected_source.txt").write_text(f"{image_path.as_posix()}\n", encoding="utf-8")

    sizes = [128, 64, 32]
    scale_by_size = {128: 3, 64: 6, 32: 10}

    for size_n in sizes:
        scale = scale_by_size[size_n]
        src = preprocess_to_int8(image_path, size_n)
        save_individual_images(out_dir, size_n, tile_name, src, scale)
        panel = make_panel(src, scale)
        panel.save(out_dir / f"size{size_n}_panel_{tile_name}.png")

    print(f"Selected source image: {image_path}")
    print(f"Saved visualization images to: {out_dir}")


if __name__ == "__main__":
    main()
