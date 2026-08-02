# CNN-Based Gesture Smart Camera

![Top-level diagram](./read_src/top_bd.png)

## Overview

This repository implements an int8 CNN person/non-person classifier for the
Zybo Z7-20. The RTL top module is `CNN_accelerator`. It reads one 128x128
signed-int8 image, executes the CNN, and returns a one-bit classification
result.

The design reuses one physical eight-lane convolution array (`NUM_CH=8`) for
all output-channel groups. This keeps DSP and logic use practical on the Zynq
7020, while making layer execution iterative.

## Network

| Stage | Operation | Feature size | Channels |
| --- | --- | --- | --- |
| Conv1 | 3x3 convolution, ReLU, 2x2 max-pool | 128x128 -> 64x64 | 1 -> 16 |
| Conv2 | 3x3 convolution, ReLU, 2x2 max-pool | 64x64 -> 32x32 | 16 -> 32 |
| Conv3 | 3x3 convolution, ReLU, 2x2 max-pool | 32x32 -> 16x16 | 32 -> 64 |
| Pool4 | 2x2 max-pool | 16x16 -> 8x8 | 64 |
| Pool5 | 2x2 max-pool | 8x8 -> 4x4 | 64 |
| FC1 | Fully connected and requantization | 1024 -> 64 | 1024 = 64 x 4 x 4 |
| FC2 | Fully connected classifier | 64 -> 1 | 1 |

Each 64-bit Conv weight word contains eight signed int8 weights, one for each
physical output lane. FC2's final signed accumulation determines `result`.

## RTL Structure

| Module | Role |
| --- | --- |
| `CNN_accelerator` | Integrates the scheduler, Conv, FC, padding, ping-pong feature BRAM, and weight ROM. |
| `CNN_acc_controller` | Schedules Conv1-3, Pool4-5, FC1, and FC2; owns stage-level memory selection. |
| `conv/conv` | Selects active Conv configuration, iterates output groups, and bridges data/weight interfaces. |
| `conv/Conv_Controller` | Runs one output group: weight load, padded feature requests, tile control, and result write commands. |
| `conv/Weight_Loader` | Reads nine kernel words and four bias words for one input channel/output group. |
| `conv/Shift_Buffer` | Captures a 4x4 input tile and emits its four overlapping 3x3 windows. |
| `conv/CH`, `conv/CH_wrapper` | Eight parallel signed MAC lanes. `CH` contains a three-stage product/reduction pipeline. |
| `conv/CH_Result_Buffer` | Captures four Conv result vectors, applies pool/ReLU selection, and serializes feature writes. |
| `conv/Standalone_MaxPool` | Implements Pool4 and Pool5. |
| `fc/*` | FC controller, MAC core, output buffer, and requantization path. |
| `padding` | Converts tile/row/column requests to zero-padded image or feature-buffer addresses. |
| `Buffer.sv` | Feature ping-pong BRAM and shared synchronous weight ROM. |

## Memory and Latency Contracts

Feature data lives in two ping-pong BRAM banks. A stage reads the bank opposite
the selected write bank, preventing an active stage from overwriting its own
input. Conv and FC share this memory through top-level read/write multiplexers.

The weight memory is a synchronous 64-bit ROM. `weight_mem` adds the selected
layer base address before the ROM access.

The important latency rules are:

- FC and Pool4/Pool5 retain one-cycle direct feature-BRAM read behavior.
- Padded Conv reads use a registered address in `padding` and a second
  top-level address register. Returned data is matched with a three-cycle Conv
  valid pipeline.
- Any new address register requires an equal delay for its request valid and
  associated control metadata. Address-only edits can silently change
  classifier scores.

For one Conv output group, the controller loads an input channel's weights,
reads a 4x4 padded tile, processes its four 3x3 windows, accumulates across
all input channels, then requantizes and writes the resulting features.

## Timing Status

The target clock period is 8 ns. The latest implemented result after moving
the padding address calculation behind a clocked boundary is:

| Metric | Result |
| --- | --- |
| WNS | +0.124 ns |
| TNS | 0 ns |
| Setup violations | 0 |

This is a standalone-project result. The desired margin before larger FPGA
integration is approximately `+0.3 ns` to `+0.5 ns`; full-system routing can
reduce the available slack.

## Implementation Resources and Power

The latest post-implementation utilization and power estimate are:

| Resource | Used | Available | Utilization |
| --- | ---: | ---: | ---: |
| LUT | 10,482 | 53,200 | 19.70% |
| LUTRAM | 8 | 17,400 | 0.05% |
| FF | 9,405 | 106,400 | 8.84% |
| BRAM | 64 | 140 | 45.71% |
| DSP | 13 | 220 | 5.91% |
| IO | 28 | 125 | 22.40% |
| BUFG | 1 | 32 | 3.13% |

| Power metric | Estimate |
| --- | ---: |
| Total on-chip power | 0.535 W |
| Junction temperature | 31.2 C |
| Thermal margin | 53.8 C at 4.5 W limit |
| Effective theta-JA | 11.5 C/W |

The power estimate has low confidence because it is implementation-based rather
than activity-calibrated. BRAM is the most constrained major resource, while
LUT, FF, and DSP headroom remains substantial.

Current timing-oriented changes include:

- Shift-based power-of-two address calculations.
- Precomputed Conv weight-group base addresses, removing the former dynamic
  group-stride multiplier from the Weight Loader request path.
- Registered FC memory ownership and a bias-prefetch state, avoiding FSM to
  ROM-address critical paths.
- Pipelined requantization, Conv write metadata, and standalone max-pool
  samples.
- Registered padding addresses and a matching Conv read-valid delay.

Do not reintroduce broad `max_fanout`, `keep`, or `dont_touch` constraints as
a default timing fix. Earlier experiments showed they can worsen routing.
Always rerun synthesis and implementation after RTL changes; an old report is
not evidence for the current sources.

## Performance Work

The original focused inference completed in `9,947,909` cycles. The Conv MAC
lanes now contain a three-stage streaming pipeline: product capture, pair-sum,
and final reduction/accumulation. In steady state it can accept one 3x3 window
per cycle, subject to result-buffer backpressure.

The continuous feature-read scheduler experiment reduced inference time to
`6,605,573` cycles, but it changed FC1 features and misclassified
`nonperson1`. That change was reverted. Back-to-back padded requests need an
explicit request/response FIFO that preserves the three-cycle
address/data association; simply removing the coordinate-prepare bubble is not
functionally safe.

Remaining Conv throughput candidates, in priority order:

1. Add a latency-aware padded-read request FIFO to safely issue one feature
   request per cycle.
2. Double-buffer Conv weights so the next input channel can prefetch while the
   current tile is processed.
3. Make `CH_Result_Buffer` stream consecutive write outputs without its
   `PREPARE_OUTPUT` bubble.

## Verification

Simulation sources are in
`Lab00_Dram_controller/Dram_controller/Dram_controller.srcs/sim_1`.

| Testbench | Scope |
| --- | --- |
| `tb_CNN_accelerator_mem.sv` | Focused four-image regression: two person and two non-person images. |
| `tb_CNN_accelerator_mem_all.sv` | Larger person/non-person regression. |
| `tb_padding_sizes.sv` | Padding/address checks for supported feature-map sizes. |

The focused test uses a `12,000,000` cycle timeout to accommodate the added
memory pipeline latency. A passing run must report all four expected decisions
and end with `ALL TESTS PASSED (4 cases)`.

The current source state needs a fresh focused regression after the CH MAC
pipeline change. The reverted continuous feature-read change must remain
reverted unless its request/data ordering is redesigned and verified.

## Troubleshooting

### Simulation fails before compiling

Vivado/XSim can leave `simulate.log` locked. Typical message:

```text
boost::filesystem::remove: ... simulate.log
```

Close the active simulation and Vivado. Ensure `vivado.exe`, `xsim.exe`,
`xelab.exe`, and `xvlog.exe` are no longer running, then relaunch the
behavioral simulation.

### `xvlog` compile failure

Read:

```text
Dram_controller.sim/sim_1/behav/xsim/xvlog.log
```

The first `ERROR: [VRFC ...]` line is the actionable error. Editor diagnostics
can miss compile paths that XSim elaborates through the full project.

### Timing regresses after a pipeline change

Check the new critical-path source and destination in a fresh implementation
report. Do not preserve a register with placement constraints before measuring
the new result. For every shared-memory address stage, check the corresponding
valid/control delay in `conv.sv`, FC control, or Pool control.

### Scores or classifications change after a timing edit

Treat this as a data/control alignment bug until proven otherwise. Compare:

- inference cycle count;
- final signed score and decision;
- FC1 feature signature printed by the focused testbench;
- padded-read address latency against `data_read_pending`,
  `data_read_pending_d`, and `data_read_pending_d2`.

Only accept a performance optimization after both classification correctness
and implementation timing are revalidated.
