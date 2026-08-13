"""Evaluate best_model_v4.pth on the local 128x128 benchmark dataset."""

from __future__ import annotations

import argparse
import time
from pathlib import Path

import numpy as np
from PIL import Image
import torch
import torch.nn as nn
from torch.utils.data import DataLoader, Dataset


IMAGE_SIZE = 128
IMAGE_EXTENSIONS = {".bmp", ".jpeg", ".jpg", ".png"}
CLASS_INFO = (("non_person", 0), ("person", 1))


class HumanDetectorCNN_FPGA128(nn.Module):
    def __init__(self) -> None:
        super().__init__()
        self.conv1 = nn.Conv2d(1, 16, kernel_size=3, padding=1, bias=False)
        self.bn1 = nn.BatchNorm2d(16)
        self.conv2 = nn.Conv2d(16, 32, kernel_size=3, padding=1, bias=False)
        self.bn2 = nn.BatchNorm2d(32)
        self.conv3 = nn.Conv2d(32, 64, kernel_size=3, padding=1, bias=False)
        self.bn3 = nn.BatchNorm2d(64)
        self.relu = nn.ReLU(inplace=True)
        self.pool = nn.MaxPool2d(2, 2)
        self.dropout = nn.Dropout(0.4)
        self.fc1 = nn.Linear(64 * 4 * 4, 64)
        self.fc2 = nn.Linear(64, 1)

    def forward(self, x: torch.Tensor) -> torch.Tensor:
        x = self.pool(self.relu(self.bn1(self.conv1(x))))
        x = self.pool(self.relu(self.bn2(self.conv2(x))))
        x = self.pool(self.relu(self.bn3(self.conv3(x))))
        x = self.pool(x)
        x = self.pool(x)
        x = x.reshape(x.size(0), -1)
        x = self.dropout(x)
        return self.fc2(self.relu(self.fc1(x))).squeeze(1)


class BenchmarkDataset(Dataset):
    def __init__(self, dataset_dir: Path) -> None:
        self.samples: list[tuple[Path, int]] = []
        for class_name, label in CLASS_INFO:
            class_dir = dataset_dir / class_name
            if not class_dir.is_dir():
                raise FileNotFoundError(f"Missing class directory: {class_dir}")
            files = sorted(
                path for path in class_dir.rglob("*")
                if path.is_file() and path.suffix.lower() in IMAGE_EXTENSIONS
            )
            self.samples.extend((path, label) for path in files)

        if not self.samples:
            raise FileNotFoundError(f"No images found in: {dataset_dir}")

    def __len__(self) -> int:
        return len(self.samples)

    def __getitem__(self, index: int) -> tuple[torch.Tensor, int, str]:
        path, label = self.samples[index]
        image = Image.open(path).convert("L")
        image = image.resize((IMAGE_SIZE, IMAGE_SIZE), Image.Resampling.BILINEAR)
        pixels = torch.from_numpy(np.array(image, dtype=np.float32)) / 255.0
        return pixels.unsqueeze(0), label, str(path)


def load_model(model_path: Path, device: torch.device) -> nn.Module:
    model = HumanDetectorCNN_FPGA128().to(device)
    checkpoint = torch.load(model_path, map_location=device, weights_only=False)
    if isinstance(checkpoint, dict):
        state_dict = checkpoint.get("state_dict", checkpoint.get("model_state_dict", checkpoint))
    else:
        state_dict = checkpoint
    state_dict = {
        key.removeprefix("module."): value for key, value in state_dict.items()
    }
    model.load_state_dict(state_dict, strict=True)
    model.eval()
    return model


def sync_device(device: torch.device) -> None:
    if device.type == "cuda":
        torch.cuda.synchronize(device)


def format_bytes(size: int) -> str:
    units = ("B", "KiB", "MiB", "GiB")
    value = float(size)
    for unit in units:
        if value < 1024.0 or unit == units[-1]:
            return f"{value:.2f} {unit}"
        value /= 1024.0
    return f"{size} B"


def report_memory(model: nn.Module, model_path: Path) -> None:
    parameter_bytes = sum(
        parameter.numel() * parameter.element_size()
        for parameter in model.parameters()
    )
    buffer_bytes = sum(
        buffer.numel() * buffer.element_size() for buffer in model.buffers()
    )
    input_bytes = IMAGE_SIZE * IMAGE_SIZE * 4
    output_bytes = 4
    print("\n=== Inference Memory Estimate ===")
    print(f"checkpoint file: {format_bytes(model_path.stat().st_size)}")
    print(f"parameters: {format_bytes(parameter_bytes)}")
    print(f"buffers: {format_bytes(buffer_bytes)}")
    print(f"model state (parameters + buffers): {format_bytes(parameter_bytes + buffer_bytes)}")
    print(f"input image (1 x 128 x 128 float32): {format_bytes(input_bytes)}")
    print(f"output image (1 float32): {format_bytes(output_bytes)}")
    print(
        "estimated model + input/output: "
        f"{format_bytes(parameter_bytes + buffer_bytes + input_bytes + output_bytes)}"
    )


def evaluate(model: nn.Module, loader: DataLoader, device: torch.device) -> None:
    totals = {0: {"total": 0, "correct": 0}, 1: {"total": 0, "correct": 0}}
    confusion = {"TP": 0, "TN": 0, "FP": 0, "FN": 0}
    batch_latencies: list[float] = []
    image_count = 0

    with torch.inference_mode():
        for images, labels, paths in loader:
            inputs = images.to(device)
            sync_device(device)
            start_time = time.perf_counter()
            logits = model(inputs)
            sync_device(device)
            batch_latencies.append(time.perf_counter() - start_time)
            image_count += images.size(0)
            predictions = (torch.sigmoid(logits) >= 0.5).cpu().long()
            for label, prediction, path in zip(labels, predictions, paths):
                expected = int(label)
                predicted = int(prediction)
                totals[expected]["total"] += 1
                totals[expected]["correct"] += int(expected == predicted)
                key = (
                    "TP" if expected and predicted else
                    "TN" if not expected and not predicted else
                    "FP" if predicted else "FN"
                )
                confusion[key] += 1
                print(f"{path} | expected={expected} predicted={predicted}")

    total = sum(item["total"] for item in totals.values())
    correct = sum(item["correct"] for item in totals.values())
    print("\n=== Evaluation Summary ===")
    print(f"total: {correct}/{total} ({100.0 * correct / total:.2f}%)")
    for class_name, label in CLASS_INFO:
        item = totals[label]
        print(
            f"{class_name}: {item['correct']}/{item['total']} "
            f"({100.0 * item['correct'] / item['total']:.2f}%)"
        )
    print("confusion:", confusion)
    total_latency = sum(batch_latencies)
    print("\n=== Inference Latency ===")
    print(f"measured images: {image_count}")
    print(f"total model forward time: {total_latency * 1000.0:.3f} ms")
    print(f"average batch latency: {total_latency / len(batch_latencies) * 1000.0:.3f} ms")
    print(f"average per-image latency: {total_latency / image_count * 1000.0:.3f} ms")
    print(f"throughput: {image_count / total_latency:.2f} images/s")


def main() -> None:
    root = Path(__file__).resolve().parent
    parser = argparse.ArgumentParser(
        description="Evaluate best_model_v4.pth on cnn_dataset."
    )
    parser.add_argument("--model", type=Path, default=root / "best_model_v4.pth")
    parser.add_argument("--dataset", type=Path, default=root / "cnn_dataset")
    parser.add_argument("--batch-size", type=int, default=32)
    parser.add_argument("--device", choices=("auto", "cpu", "cuda"), default="auto")
    args = parser.parse_args()

    if args.device == "cuda" and not torch.cuda.is_available():
        raise RuntimeError("CUDA was requested but is not available.")
    device = torch.device(
        "cuda"
        if args.device == "cuda"
        or (args.device == "auto" and torch.cuda.is_available())
        else "cpu"
    )
    dataset = BenchmarkDataset(args.dataset)
    loader = DataLoader(dataset, batch_size=args.batch_size, shuffle=False, num_workers=0)
    model = load_model(args.model, device)
    print(f"model: {args.model}")
    print(f"dataset: {args.dataset} ({len(dataset)} images)")
    print(f"device: {device}")
    report_memory(model, args.model)
    with torch.inference_mode():
        warmup_images, _, _ = next(iter(loader))
        sync_device(device)
        model(warmup_images.to(device))
        sync_device(device)
    print("warm-up: 1 batch (excluded from latency)")
    evaluate(model, loader, device)


if __name__ == "__main__":
    main()
