import re
from pathlib import Path

import pandas as pd


SOURCE_XLSX = Path("./save_pt/int8_weights_extracted.xlsx")
OUTPUT_XLSX = Path("./save_pt/int8_weights_fc_reordered.xlsx")
FC_OUTPUT_CHUNK = 8

FC_WEIGHT_PATTERN = re.compile(r"^(fc\d+)_(\d+)_(\d+)$")
FC_BIAS_PATTERN = re.compile(r"^(fc\d+)_bias_(\d+)$")


def parse_fc_weight_label(label):
    match = FC_WEIGHT_PATTERN.match(str(label))
    if match is None:
        return None

    layer_name, input_idx, output_idx = match.groups()
    return layer_name, int(input_idx), int(output_idx)


def parse_fc_bias_label(label):
    match = FC_BIAS_PATTERN.match(str(label))
    if match is None:
        return None

    layer_name, output_idx = match.groups()
    return layer_name, int(output_idx)


def build_fc_interleaved_order(weight_df, bias_df):
    """Order FC rows by output chunks and insert matching bias rows after each chunk."""
    parsed_weight_rows = []
    max_input_idx = -1
    max_output_idx = -1

    for row_idx, label in weight_df["Label (주석)"].items():
        parsed = parse_fc_weight_label(label)
        if parsed is None:
            continue

        layer_name, input_idx, output_idx = parsed
        parsed_weight_rows.append((row_idx, layer_name, input_idx, output_idx))
        max_input_idx = max(max_input_idx, input_idx)
        max_output_idx = max(max_output_idx, output_idx)

    if not parsed_weight_rows:
        return []

    parsed_bias_rows = []
    for row_idx, label in bias_df["Label (주석)"].items():
        parsed = parse_fc_bias_label(label)
        if parsed is None:
            continue

        layer_name, output_idx = parsed
        parsed_bias_rows.append((row_idx, layer_name, output_idx))

    weight_lookup = {
        (layer_name, input_idx, output_idx): row_idx
        for row_idx, layer_name, input_idx, output_idx in parsed_weight_rows
    }
    bias_lookup = {(layer_name, output_idx): row_idx for row_idx, layer_name, output_idx in parsed_bias_rows}

    layer_name = parsed_weight_rows[0][1]
    ordered_indices = []

    for output_base in range(0, max_output_idx + 1, FC_OUTPUT_CHUNK):
        output_end = min(output_base + FC_OUTPUT_CHUNK, max_output_idx + 1)

        # 1) Append weight block for this output chunk.
        for input_idx in range(max_input_idx + 1):
            for output_idx in range(output_base, output_end):
                row_idx = weight_lookup.get((layer_name, input_idx, output_idx))
                if row_idx is not None:
                    ordered_indices.append(row_idx)

        # 2) Insert matching bias rows right after the block.
        for output_idx in range(output_base, output_end):
            row_idx = bias_lookup.get((layer_name, output_idx))
            if row_idx is not None:
                ordered_indices.append(row_idx)

    return ordered_indices


def reorder_fc_rows(df):
    ordered_parts = []

    fc_weight_mask = df["Label (주석)"].astype(str).str.match(FC_WEIGHT_PATTERN)
    fc_bias_mask = df["Label (주석)"].astype(str).str.match(FC_BIAS_PATTERN)
    fc_mask = fc_weight_mask | fc_bias_mask

    non_fc_df = df.loc[~fc_mask].copy()
    if not non_fc_df.empty:
        ordered_parts.append(non_fc_df)

    fc_df = df.loc[fc_mask].copy()
    if fc_df.empty:
        return df.copy()

    fc_layers = sorted({parse_fc_weight_label(label)[0] for label in fc_df.loc[fc_weight_mask, "Label (주석)"] if parse_fc_weight_label(label) is not None})

    for layer_name in fc_layers:
        layer_weight_mask = fc_df["Label (주석)"].astype(str).str.match(rf"^{layer_name}_\d+_\d+$")
        layer_bias_mask = fc_df["Label (주석)"].astype(str).str.match(rf"^{layer_name}_bias_\d+$")

        layer_weight_df = fc_df.loc[layer_weight_mask]
        layer_bias_df = fc_df.loc[layer_bias_mask]
        ordered_indices = build_fc_interleaved_order(layer_weight_df, layer_bias_df)
        if ordered_indices:
            ordered_parts.append(fc_df.loc[ordered_indices])

    return pd.concat(ordered_parts, axis=0).reset_index(drop=True)


def main():
    if not SOURCE_XLSX.exists():
        raise FileNotFoundError(f"Source XLSX not found: {SOURCE_XLSX}")

    df = pd.read_excel(SOURCE_XLSX)
    reordered_df = reorder_fc_rows(df)
    reordered_df.to_excel(OUTPUT_XLSX, index=False)

    print(f"Source: {SOURCE_XLSX}")
    print(f"Output: {OUTPUT_XLSX}")
    print("FC rows reordered by output chunks of 8 and input index order.")


if __name__ == "__main__":
    main()