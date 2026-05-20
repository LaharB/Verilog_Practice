# Day 2 : Verilog Constructs

Day 2 emphasizes on Verilog Constructs like 
- Module , its name and ports and the body inside a module, 
- Data Types
- Arrays and Memories
- Numbers in Verilog
- Operators in Verilog  

## Basic Structure of a Module

In Verilog, the basic unit of hardware is called a **module**. A module has mainly 3 parts - 
- Name : to identify different designs
- Ports : inputs and outputs for signals
- Body : logic describing how outputs are generated from inputs.

```verilog
module my_module(
    input a, b,
    output y
);

    //Body : Design logic here

endmodule
```
## Data Types in Verilog

Verilog has mainly two data types - net and reg.
Net data type is further divided into :

- **Wire:**  It represents a physical connection between components. It must be driven by continuous assignments **(assign)** or outputs of other modules.
- Default value of wire is Z (high impedance)

```verilog
wire signal_a; //one-bit value as a single net
wire [5:0] signal_a; //net as a vector of 6 bits
```
##  To be updated