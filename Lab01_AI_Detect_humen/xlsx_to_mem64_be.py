from pathlib import Path
import re

import pandas as pd


CONV_XLSX = Path("./save_pt/int8_weights_conv_fomat.xlsx")
FC_XLSX = Path("./save_pt/int8_weights_fc_reordered.xlsx")

CONV_MEM_OUT = Path("./save_pt/int8_weights_conv_fomat_be64.mem")
FC_MEM_OUT = Path("./save_pt/int8_weights_fc_reordered_be64.mem")


WORD_BYTE_COUNT = 8


def to_u8(value: int) -> int:
    return int(value) & 0xFF


def u32_to_be_bytes(value: int):
    u = int(value) & 0xFFFFFFFF
    return [(u >> 24) & 0xFF, (u >> 16) & 0xFF, (u >> 8) & 0xFF, u & 0xFF]


def write_words_to_mem(words, out_path: Path):
    out_path.parent.mkdir(parents=True, exist_ok=True)
    with out_path.open("w", encoding="ascii") as f:
        for word_bytes in words:
            f.write("".join(f"{b:02X}" for b in word_bytes) + "\n")


def parse_conv_info(info: str):
    # Examples:
    # "12번지 | Byte3(CH3) | Weight K11 | conv1_ch3_0_11"
    # "19번지 | Lower32(CH8) | Bias | conv1_bias_ch8"
    m_addr = re.search(r"(\d+)번지", str(info))
    m_byte = re.search(r"Byte(\d+)\(CH\d+\)", str(info))
    m_upper = re.search(r"Upper32\(CH\d+\)", str(info))
    m_lower = re.search(r"Lower32\(CH\d+\)", str(info))
    if not m_addr:
        raise ValueError(f"Cannot parse conv address from info column: {info}")
    if m_byte:
        return int(m_addr.group(1)), "byte", int(m_byte.group(1))
    if m_upper:
        return int(m_addr.group(1)), "upper32", 0
    if m_lower:
        return int(m_addr.group(1)), "lower32", 0
    raise ValueError(f"Cannot parse conv layout from info column: {info}")


def conv_xlsx_to_be64_words(conv_df: pd.DataFrame):
    info_col = "64-bit Word 주소 | Byte(CH) | 구분 | 원본 Label"
    bit_width_col = "Bit Width"
    value_col = "Value"
    int8_value_col = "INT8 Value"
    if info_col not in conv_df.columns:
        raise KeyError("Conv xlsx format mismatch: required columns are missing.")

    addr_to_word = {}
    max_addr = 0
    for _, row in conv_df.iterrows():
        addr, layout_kind, layout_index = parse_conv_info(row[info_col])

        if addr not in addr_to_word:
            addr_to_word[addr] = [0] * WORD_BYTE_COUNT

        bit_width = int(row[bit_width_col]) if bit_width_col in conv_df.columns and not pd.isna(row[bit_width_col]) else 8
        if value_col in conv_df.columns and not pd.isna(row[value_col]):
            value = int(row[value_col])
        elif int8_value_col in conv_df.columns and not pd.isna(row[int8_value_col]):
            value = int(row[int8_value_col])
        else:
            raise ValueError(f"Missing conv value for row: {row.to_dict()}")

        if layout_kind == "byte":
            if bit_width != 8:
                raise ValueError(f"Expected 8-bit conv weight at address {addr}, got {bit_width}")
            if not 0 <= layout_index < WORD_BYTE_COUNT:
                raise ValueError(f"Invalid byte index {layout_index} at address {addr}")
            # Reversed word packing: Byte0 -> [7:0], Byte7 -> [63:56]
            addr_to_word[addr][WORD_BYTE_COUNT - 1 - layout_index] = to_u8(value)
        elif layout_kind == "upper32":
            if bit_width != 32:
                raise ValueError(f"Expected 32-bit conv bias at address {addr}, got {bit_width}")
            addr_to_word[addr][0:4] = u32_to_be_bytes(value)
        elif layout_kind == "lower32":
            if bit_width != 32:
                raise ValueError(f"Expected 32-bit conv bias at address {addr}, got {bit_width}")
            addr_to_word[addr][4:8] = u32_to_be_bytes(value)
        else:
            raise ValueError(f"Unsupported conv layout kind: {layout_kind}")

        if addr > max_addr:
            max_addr = addr

    words = []
    for addr in range(max_addr + 1):
        words.append(addr_to_word.get(addr, [0] * WORD_BYTE_COUNT))
    return words


def fc_xlsx_to_be64_words(fc_df: pd.DataFrame):
    bw_col = "Bit Width"
    value_col = "Value"
    if bw_col not in fc_df.columns or value_col not in fc_df.columns:
        raise KeyError("FC xlsx format mismatch: required columns are missing.")

    byte_stream = []
    for _, row in fc_df.iterrows():
        bit_width = int(row[bw_col])
        value = int(row[value_col])

        if bit_width == 8:
            byte_stream.append(to_u8(value))
        elif bit_width == 32:
            byte_stream.extend(u32_to_be_bytes(value))
        else:
            raise ValueError(f"Unsupported Bit Width in fc xlsx: {bit_width}")

    rem = len(byte_stream) % WORD_BYTE_COUNT
    if rem != 0:
        byte_stream.extend([0] * (WORD_BYTE_COUNT - rem))

    words = []
    for i in range(0, len(byte_stream), WORD_BYTE_COUNT):
        words.append(list(reversed(byte_stream[i : i + WORD_BYTE_COUNT])))
    return words


def main():
    if not CONV_XLSX.exists():
        raise FileNotFoundError(f"Missing input file: {CONV_XLSX}")
    if not FC_XLSX.exists():
        raise FileNotFoundError(f"Missing input file: {FC_XLSX}")

    conv_df = pd.read_excel(CONV_XLSX)
    fc_df = pd.read_excel(FC_XLSX)

    conv_words = conv_xlsx_to_be64_words(conv_df)
    fc_words = fc_xlsx_to_be64_words(fc_df)

    write_words_to_mem(conv_words, CONV_MEM_OUT)
    write_words_to_mem(fc_words, FC_MEM_OUT)

    print(f"[OK] conv mem: {CONV_MEM_OUT} ({len(conv_words)} words)")
    print(f"[OK] fc mem:   {FC_MEM_OUT} ({len(fc_words)} words)")


if __name__ == "__main__":
    main()
