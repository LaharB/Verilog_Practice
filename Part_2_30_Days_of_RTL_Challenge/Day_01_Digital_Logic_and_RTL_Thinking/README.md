# Day 1 : Digital Logic and RTL Thinking

Day 1 emphasizes the basic difference between software coding and hardware and the thnking process behind RTL Design and Verification.

Software runs instructions sequentially in time - one after the other whereas Hardware executes everything in parallel.

## RTL FLow from Idea to Code 

1. Understand the requirement - What is the Function?
2. Draw the block diagram - what logic blocks and registers are needed ? 
3. Deciding clocking - How many clocks ? Synchronous or Asynchronous reset ?
4. Write the RTL code - Use synthesizable verilog constructs
5. Verify - Test with a simulation before synthesis

Two sample codes are written to understand the process of verilog coding - design and testbench for simulation

<details><summary><b>Sample Code 1 : Adder</b></summary>

### Design 

```verilog
module and_gate(
    input a, b,
    output y
);

assign y = a & b;

endmodule
```

### Testbench

```verilog
`include "../rtl/sample_adder.v"
module tb_and_gate();

    reg a, b;
    wire y;

    and_gate DUT (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $display("A B | Y");
        a = 0; b = 0;
        #10
        $display("%b %b | %b", a, b, y);
        a = 0; b = 1;
        #10
        $display("%b %b | %b", a, b, y);
        a = 1; b = 0;
        #10
        $display("%b %b | %b", a, b, y); 
        a = 1; b = 1;
        #10
        $display("%b %b | %b", a, b, y);
        $finish;
    end
endmodule
```

### Simulation

![alt text](docs/waveform_sample_adder.png)

### Schematic 

![alt text](docs/schematic_sample_adder.png)

</details>