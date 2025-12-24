`timescale 1ns/1ps

module AddRoundKey_tb;

    reg [63:0] currentState;
    reg [63:0] roundKey;

    wire [63:0] nextState;

    AddRoundKey uut (
        .currentState(currentState),
        .roundKey(roundKey),
        .nextState(nextState)
    );

    initial begin
        $display("currentState  | roundKey |  nextState");
        $display("---------------------------------------------------------------");

        currentState = 64'h0000000000000000; roundKey = 64'h0000000000000000; #5;
        $display("%h | %h | %h", currentState, roundKey, nextState);

        currentState = 64'hFFFFFFFFFFFFFFFF; roundKey = 64'h0000000000000000; #5;
        $display("%h | %h | %h", currentState, roundKey, nextState);

        currentState = 64'hAAAAAAAAAAAAAAAA; roundKey = 64'h5555555555555555; #5;
        $display("%h | %h | %h", currentState, roundKey, nextState);

        currentState = 64'h123456789ABCDEF0; roundKey = 64'h0F1E2D3C4B5A6978; #5;
        $display("%h | %h | %h", currentState, roundKey, nextState);

        currentState = 64'h89ABCDEF01234567; roundKey = 64'h76543210FEDCBA98; #5;
        $display("%h | %h | %h", currentState, roundKey, nextState);

        currentState = 64'hDEADBEEFCAFEBABE; roundKey = 64'h0123456789ABCDEF; #5;
        $display("%h | %h | %h", currentState, roundKey, nextState);

        currentState = 64'hFEDCBA9876543210; roundKey = 64'h0011223344556677; #5;
        $display("%h | %h | %h", currentState, roundKey, nextState);

        currentState = 64'hCAFED00D12345678; roundKey = 64'h0BADF00D87654321; #5;
        $display("%h | %h | %h", currentState, roundKey, nextState);

        currentState = 64'h1111111111111111; roundKey = 64'h2222222222222222; #5;
        $display("%h | %h | %h", currentState, roundKey, nextState);

        currentState = 64'hAAAAAAAA55555555; roundKey = 64'h33333333CCCCCCCC; #5;
        $display("%h | %h | %h", currentState, roundKey, nextState);

        currentState = 64'h0F0F0F0F0F0F0F0F; roundKey = 64'hF0F0F0F0F0F0F0F0; #5;
        $display("%h | %h | %h", currentState, roundKey, nextState);

        currentState = 64'h13579BDF2468ACE0; roundKey = 64'hFEDCBA9876543210; #5;
        $display("%h | %h | %h", currentState, roundKey, nextState);

        currentState = 64'hAAAAAAAAFFFFFFFF; roundKey = 64'h5555555500000000; #5;
        $display("%h | %h | %h", currentState, roundKey, nextState);

        currentState = 64'h0000FFFF0000FFFF; roundKey = 64'hFFFF0000FFFF0000; #5;
        $display("%h | %h | %h", currentState, roundKey, nextState);

        currentState = 64'h7FFFFFFFFFFFFFFF; roundKey = 64'h8000000000000000; #5;
        $display("%h | %h | %h", currentState, roundKey, nextState);

        currentState = 64'hCAFEBABECAFEBABE; roundKey = 64'hDEADBEEFDEADBEEF; #5;
        $display("%h | %h | %h", currentState, roundKey, nextState);

        currentState = 64'h0123456789ABCDEF; roundKey = 64'hF0E1D2C3B4A59687; #5;
        $display("%h | %h | %h", currentState, roundKey, nextState);

        currentState = 64'hABCDEF0123456789; roundKey = 64'h13579BDF2468ACE0; #5;
        $display("%h | %h | %h", currentState, roundKey, nextState);

        currentState = 64'hAAAAAAAA00000000; roundKey = 64'h55555555FFFFFFFF; #5;
        $display("%h | %h | %h", currentState, roundKey, nextState);

        currentState = 64'h1122334455667788; roundKey = 64'h99AABBCCDDEEFF00; #5;
        $display("%h | %h | %h", currentState, roundKey, nextState);

        $display("---- Testbench Completed ----");

    end

endmodule
