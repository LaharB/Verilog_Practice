`include "../rtl/sample_counter.v"

module tb_counter_2_bit;

    reg clk, rst;
    wire [1:0] count;

    //DUT instance
    counter_2_bit DUT(
        .clk(clk),
        .rst(rst),
        .count(count)
    );

    //clock generation
    initial clk = 0;
    always #5 clk = ~clk; //10 ns clk period -> 100 MHz

    initial begin
        $display("Time\tRST\tCount");
        $display("-------------------");

        //apply reset for 1 cycle
        rst = 1'b1;
        #10;
        rst = 1'b0; //remove rst
        #50 //Run counter for few cycles
        rst = 1; //apply reset again
        #10;
        rst = 0;
        #30
        $finish;
    end

    //monitoring any changes in the signals and displaying them in console 
    initial begin
        $monitor("%0t\t%b\t%b", $time, rst, count);
    end
    
endmodule