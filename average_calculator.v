module average_calculator(
    input  [7:0] a, b, c, d,
    output [7:0] avg
);
    wire [9:0] sum; // 10 bits to hold sum of 4 x 8-bit values

    assign sum = a + b + c + d;
    assign avg = sum / 4;

endmodule
