# Circuit Design of Optimal Solution to Transportation Problem

## Introduction  
This project implements a hardware design to solve the **Transportation Problem** by finding the optimal route with the minimum transportation cost. The system generates all possible routes using **Permutation Algorithms** (Lexicographic Order and Johnson-Trotter Algorithm) and evaluates their costs to identify the optimal solution. The circuit is implemented using **Verilog HDL**, synthesized under **TSMC 0.13μm process**, and compared for performance and area efficiency.

---

## Features  
- **Permutation Algorithms**:  
  - Lexicographic Order: Higher speed, but larger area.  
  - Johnson-Trotter Algorithm: Smaller area, but slower execution.  
- **Hardware Implementation**:  
  - Sequence Generator: Generates all permutations.  
  - Cost ROM: Stores transportation costs for all routes.  
  - MinCost Calculator: Identifies the minimum cost and matching routes.  
- **Performance Metrics**:  
  - Execution Time: Measured in cycles.  
  - Area: Measured in μm².  
  - Combined Metric: Area × Time.

---

## Methodology  

### Workflow  
1. **Input**:  
   - Transportation costs for multiple routes stored in **Cost_ROM**.  
2. **Permutation Generation**:  
   - Generate all possible route permutations using Lexicographic Order or Johnson-Trotter Algorithm.  
3. **Cost Calculation**:  
   - For each permutation, calculate the total transportation cost.  
   - Compare with the minimum cost and update if a better solution is found.  
4. **Output**:  
   - Minimum transportation cost and corresponding routes.

---

## Results  

### Performance Comparison  

| Metric                     | Lexicographic Order | Johnson-Trotter Algorithm |  
|----------------------------|---------------------|---------------------------|  
| Execution Time (ms)        | 2.82               | 4.03                      |  
| Area (μm²)                 | 7896               | 6928                      |  
| Area × Time (Normalized)   | 0.22               | 0.28                      |  

#### Key Insights:  
- The Lexicographic Order algorithm achieves faster execution but requires a larger circuit area.  
- The Johnson-Trotter algorithm uses less area but has higher execution time.  
- The Lexicographic Order algorithm is more efficient when considering both time and area.

---

## Hardware Architecture  

### System Design  
- **Sequence Generator**: Generates all permutations.  
- **Cost ROM**: Stores the transportation costs for all route combinations.  
- **Compute MinCost & MatchCount**: Calculates the minimum cost and the number of optimal solutions.  


### Key Components  
- **Sequence Generator**:  
  - Implements Lexicographic Order or Johnson-Trotter algorithm.  
  - Outputs all possible permutations to evaluate costs.  
- **Cost Calculator**:  
  - Evaluates the total cost for each permutation.  
  - Updates minimum cost and matching count if a new optimal solution is found.  
- **Output ROM**: Stores the optimal routes for future reference.  

---

## Simulation Results  

### C++ Simulation (Golden Model)  
- The correctness of the hardware implementation was verified using a C++ simulation.  

### Post-Synthesis Simulation  
- Synthesized using **TSMC 0.13μm** process.  
- Clock period: **10ns**.  
- Verified functionality using **NC-Verilog** and achieved consistent results with the C++ model.

### Area Estimation  
| Algorithm                | Area (μm²) |  
|--------------------------|------------|  
| Lexicographic Order      | 7896       |  
| Johnson-Trotter Algorithm| 6928       |  

---

## Tools and Environment  
- **Hardware Description Language**: Verilog HDL.  
- **Simulation and Synthesis Tools**:  
  - Quartus II 13.1 (Intel).  
  - Modelsim-Altera 10.1d (Siemens).  
  - Design Compiler and Verdi (Synopsys).  
  - NC-Verilog (Cadence).  
- **Programming Language**: C++ (for algorithm simulation).  

---

## Conclusion  
This project demonstrates the effective implementation of hardware solutions for the Transportation Problem. The Lexicographic Order algorithm was found to be the better choice in terms of the area × time product. Future work could explore more efficient algorithms such as the **Hungarian Algorithm**, which has a lower computational complexity of O(n³), and implement the design on FPGA for enhanced flexibility and scalability.

