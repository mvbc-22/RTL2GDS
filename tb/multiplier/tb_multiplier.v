`timescale 1ns/1ps

module tb_multiplier;

reg [3:0] A;
reg [3:0] B;
wire [7:0] P;

multiplier dut (
    .A(A),
    .B(B),
    .P(P)
);

initial begin

    $dumpfile("waves/multiplier.vcd");
    $dumpvars(0, tb_multiplier);

    // Test 1
    A = 4'd0;
    B = 4'd0;
    #10;
    $display("A=%d B=%d P=%d", A, B, P);

    // Test 2
    A = 4'd3;
    B = 4'd5;
    #10;
    $display("A=%d B=%d P=%d", A, B, P);

    // Test 3
    A = 4'd7;
    B = 4'd9;
    #10;
    $display("A=%d B=%d P=%d", A, B, P);

    // Test 4
    A = 4'd15;
    B = 4'd15;
    #10;
    $display("A=%d B=%d P=%d", A, B, P);

    $finish;

end

endmodule
