# 🎧 Quantized Neural Speech Enhancement Accelerator (VLSI)

## 📌 Overview
This project presents a simplified VLSI implementation of a **Quantized Neural Speech Enhancement Accelerator** using Verilog HDL.  
The design focuses on low-complexity and efficient processing using a pipelined architecture.

---

## 🧠 Architecture
The system is designed as a pipeline with the following stages:

Audio Input → STFT → Quantizer → MAC → Attention → ISTFT → Audio Output

- **STFT**: Converts input signal (simplified)
- **Quantizer**: Reduces bit-width (8-bit → 4-bit)
- **MAC**: Performs multiply-accumulate (neural computation)
- **Attention**: Applies scaling (lightweight attention)
- **ISTFT**: Converts back to output signal

---

## ⚙️ Features
- ✅ Pipelined architecture
- ✅ Quantized computation (low power design)
- ✅ Modular Verilog implementation
- ✅ Clean RTL schematic
- ✅ Simulation with correct waveform output

---

## 📊 Simulation Results
- Input values applied sequentially  
- Output observed after pipeline delay  
- Verified outputs:


- Initial unknown (`XX`) removed using reset logic

---

## 🖼️ Results Included
- ✔ RTL Schematic  
- ✔ Waveform Output  
- ✔ FPGA Device (Chip) View  

---

## 📁 Project Structure


---

## 🛠️ Tools Used
- Xilinx Vivado (for design & simulation)
- Verilog HDL

---

## 🎯 Key Concepts
- VLSI Design
- Digital Signal Processing (basic)
- Quantization
- Neural Network Acceleration
- Pipelining

---

## 🚀 Conclusion
This project demonstrates how a neural speech enhancement concept can be implemented in hardware using a simplified and efficient architecture.  
It highlights the importance of quantization and pipelining in low-power VLSI systems.

---

## 👨‍💻 Author
Narasimha Lakkimsetty 
B.Tech ECE Student
