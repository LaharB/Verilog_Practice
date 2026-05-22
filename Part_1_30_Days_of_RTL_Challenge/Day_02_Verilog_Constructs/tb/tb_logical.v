module tb_logical();

    reg [3:0] x = 1100, y = 0000;
    wire and_result, or_result, not_result, not_result_2;

    assign and_result = x && y;  // 1 && 0 = 0
    assign or_result  = x || y;  // 1 || 0 = 1
    assign not_result = !x;      // !1 = 0
    assign not_result_2 = !y;    // !0 = 1

    initial begin
        $monitor("Values of x && y : %0b, x || y : %0b and !x : %0b, !y : %0b", and_result, or_result, not_result, not_result_2);    
    end

endmodule