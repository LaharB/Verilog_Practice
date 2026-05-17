module tb_arithmetic();

    reg [3:0] a = 4'd9, b = 4'd4;
    wire [4:0] sum, diff, div, mod;
    wire [7:0] prod;

    assign sum  = a + b;  // 9 + 4 = 13      
    assign diff = a - b;  // 9 - 4 = 5
    assign prod = a * b;  // 9 * 4 = 36
    assign div  = a / b;  // 9 / 4 = 2 (integer division) 
    assign mod  = a % b;  // 9 % 4 = 1 (remainder)
    
endmodule