# Simplified AES Encryption (Verilog)

This repository contains a hardware implementation of a simplified Advanced Encryption Standard (AES) block cipher. The design implements core cryptographic primitives including S-Box substitution, row shifting, and key expansion.

## 👥 Authors
* **Nitheesh Kumar Vennela**
---

## 📂 Project Structure

Based on the `SIMPLIFIED-AES` workspace:

```text
.
├── module.v                # Core Verilog logic (Encrypt, Round, NextKey, etc.)
├── add_round_key_tb.v      # Testbench for the AddRoundKey transformation
├── encrypt_tb.v            # Top-level testbench for the encryption path
├── next_key_tb.v           # Testbench for the Key Expansion logic
├── round_tb.v              # Testbench for a single AES round
├── add_expected.txt        # Expected output vectors for AddRoundKey
├── encrypt_expected.txt    # Expected output vectors for Full Encryption
├── next_expected.txt       # Expected output vectors for Key Expansion
├── round_expected.txt      # Expected output vectors for Round logic
├── problem_statement.pdf   # Project requirements and specifications
├── README.md               # Project documentation
└── LICENSE                 # Project license
```

## 🚀 How to Run

### Prerequisites
You will need a Verilog simulator installed (e.g., **Icarus Verilog**) and a waveform viewer (e.g., **GTKWave**).

### 1. Compilation
To simulate the full encryption path, run the following command in your terminal:

```bash
iverilog -o aes_sim module.v encrypt_tb.v
```

### 2. Execution
Run the compiled simulation file:

```bash
vvp aes_sim
```

### 3. Viewing Waveforms (Optional)
If your testbench generates a `.vcd` file, you can view the timing diagrams using:

```bash
gtkwave dump.vcd
```

## 🛠 Features

Modular Design: Separate modules for S-Box, ShiftRows, and Key Expansion.

Automated Testing: Includes expected output text files to verify hardware logic against golden models.

Optimized for FPGA: Written in synthesizable Verilog.