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

Verilog has mainly two data types - 
1. net datatype
2. reg datatype

**Wire** is the most commonly used Net datatype.

### Wire 

- It represents a physical connection between components. It must be driven by continuous assignments **(assign)** or outputs of other modules.
- Default value of wire is Z (high impedance)

```verilog
wire signal_a; //one-bit value as a single net
wire [5:0] signal_a; //net as a vector of 6 bits
```

Reg datatype is further divided into : 

### Reg 

- Stores a value until explicitly changed
- Used in procedural blocks(always or initial)
- Default value of reg is X

```verilog
reg reg_a; //single bit register
reg [7:0] reg_a; // 8-bit register as a vector
```
### NOTE 
Index is always [MSB:LSB] 

### Integer 

- Used in testbenches, **not synthesizable** in hardware
- integers are general-purpose 32-bit register data 
- default size is 32-bit 

```verilog
integer count; //32-bit 
```
### Real 

- The real datatype is used to store floating-point numbers.
- They are declared using the **real** keyword
- The real value when assigned to any integer value are rounded off the nearest integer value 

```verilog
real pi = 3.14;
integer a; 
    
initial a = pi; //a gets the value 3 
```


##  To be updated