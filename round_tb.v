`timescale 1ns/1ps

module Round_tb;

    reg  [63:0] currentState;
    reg  [63:0] roundKey;
    wire [63:0] nextState;

    Round uut (
        .currentState(currentState),
        .roundKey(roundKey),
        .nextState(nextState)
    );

    initial begin
        $display("---- Round Module Testbench ----");


        currentState = 64'h0000000000000000; roundKey = 64'h0000000000000000; #5;
        $display("Case1 : currentState=%h roundKey=%h nextState=%h", currentState, roundKey, nextState);

        currentState = 64'hFFFFFFFFFFFFFFFF; roundKey = 64'hFFFFFFFFFFFFFFFF; #5;
        $display("Case2 : currentState=%h roundKey=%h nextState=%h", currentState, roundKey, nextState);

        currentState = 64'hAAAAAAAAAAAAAAAA; roundKey = 64'h5555555555555555; #5;
        $display("Case3 : currentState=%h roundKey=%h nextState=%h", currentState, roundKey, nextState);

        currentState = 64'h123456789ABCDEF0; roundKey = 64'h0F1E2D3C4B5A6978; #5;
        $display("Case4 : currentState=%h roundKey=%h nextState=%h", currentState, roundKey, nextState);

        currentState = 64'hFEDCBA9876543210; roundKey = 64'h89ABCDEF01234567; #5;
        $display("Case5 : currentState=%h roundKey=%h nextState=%h", currentState, roundKey, nextState);

        currentState = 64'hCAFEBABEDEADC0DE; roundKey = 64'hDEADBEEFCAFED00D; #5;
        $display("Case6 : currentState=%h roundKey=%h nextState=%h", currentState, roundKey, nextState);

        currentState = 64'h0ACE0ACE0ACE0ACE; roundKey = 64'h13579BDF2468ACE0; #5;
        $display("Case7 : currentState=%h roundKey=%h nextState=%h", currentState, roundKey, nextState);

        currentState = 64'h02468ACE13579BDF; roundKey = 64'h55AA33CC77EE99BB; #5;
        $display("Case8 : currentState=%h roundKey=%h nextState=%h", currentState, roundKey, nextState);

        currentState = 64'h1122334455667788; roundKey = 64'h8877665544332211; #5;
        $display("Case9 : currentState=%h roundKey=%h nextState=%h", currentState, roundKey, nextState);

        currentState = 64'hA1B2C3D4E5F60718; roundKey = 64'h1F2E3D4C5B6A7988; #5;
        $display("Case10: currentState=%h roundKey=%h nextState=%h", currentState, roundKey, nextState);

        currentState = 64'hFF00FF00FF00FF00; roundKey = 64'h00FF00FF00FF00FF; #5;
        $display("Case11: currentState=%h roundKey=%h nextState=%h", currentState, roundKey, nextState);

        currentState = 64'h1234567812345678; roundKey = 64'h89ABCDEF89ABCDEF; #5;
        $display("Case12: currentState=%h roundKey=%h nextState=%h", currentState, roundKey, nextState);

        currentState = 64'h0102030405060708; roundKey = 64'hF1E2D3C4B5A69788; #5;
        $display("Case13: currentState=%h roundKey=%h nextState=%h", currentState, roundKey, nextState);

        currentState = 64'h9999999999999999; roundKey = 64'h1111111111111111; #5;
        $display("Case14: currentState=%h roundKey=%h nextState=%h", currentState, roundKey, nextState);

        currentState = 64'h2468ACE02468ACE0; roundKey = 64'h13579BDF13579BDF; #5;
        $display("Case15: currentState=%h roundKey=%h nextState=%h", currentState, roundKey, nextState);

        currentState = 64'h0F0F0F0F0F0F0F0F; roundKey = 64'hF0F0F0F0F0F0F0F0; #5;
        $display("Case16: currentState=%h roundKey=%h nextState=%h", currentState, roundKey, nextState);

        currentState = 64'hCAFED00DDEADC0DE; roundKey = 64'hFEEDFACECAFEBEEF; #5;
        $display("Case17: currentState=%h roundKey=%h nextState=%h", currentState, roundKey, nextState);

        currentState = 64'h1111222233334444; roundKey = 64'hAAAABBBBCCCCDDDD; #5;
        $display("Case18: currentState=%h roundKey=%h nextState=%h", currentState, roundKey, nextState);

        currentState = 64'h1357246813572468; roundKey = 64'h2468135724681357; #5;
        $display("Case19: currentState=%h roundKey=%h nextState=%h", currentState, roundKey, nextState);

        currentState = 64'hFFFFFFFF00000000; roundKey = 64'h00000000FFFFFFFF; #5;
        $display("Case20: currentState=%h roundKey=%h nextState=%h", currentState, roundKey, nextState);

        $display("---- Testbench Completed ----");
    end

endmodule
