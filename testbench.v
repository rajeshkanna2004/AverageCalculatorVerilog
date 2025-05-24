`timescale 1ns/1ps

module testbench;

    reg [7:0] a, b, c, d;
    wire [7:0] avg;

    average_calculator uut (
        .a(a), .b(b), .c(c), .d(d),
        .avg(avg)
    );

    initial begin
        $display("A\tB\tC\tD\tAVG");
        a = 8'd10; b = 8'd20; c = 8'd30; d = 8'd40;
        #10 $display("%d\t%d\t%d\t%d\t%d", a, b, c, d, avg);

        a = 8'd100; b = 8'd150; c = 8'd200; d = 8'd250;
        #10 $display("%d\t%d\t%d\t%d\t%d", a, b, c, d, avg);

        a = 8'd0; b = 8'd0; c = 8'd0; d = 8'd0;
        #10 $display("%d\t%d\t%d\t%d\t%d", a, b, c, d, avg);

        a = 8'd255; b = 8'd255; c = 8'd255; d = 8'd255;
        #10 $display("%d\t%d\t%d\t%d\t%d", a, b, c, d, avg);

        $finish;
    end

endmodule
