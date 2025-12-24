`timescale 1ns/1ps

module NextKey_tb;

    reg  [63:0] currentKey;
    wire [63:0] nextKey;

    NextKey uut (
        .currentKey(currentKey),
        .nextKey(nextKey)
    );

    initial begin
        $display("---- NextKey Testbench ----");

        
        currentKey = 64'h123456789ABCDEF0; #5;
        $display("Case1 : currentKey=%h nextKey=%h", currentKey, nextKey);

        
        currentKey = 64'h0F1E2D3C4B5A6978; #5;
        $display("Case2 : currentKey=%h nextKey=%h", currentKey, nextKey);

        
        currentKey = 64'h89ABCDEF01234567; #5;
        $display("Case3 : currentKey=%h nextKey=%h", currentKey, nextKey);

        
        currentKey = 64'hFEDCBA9876543210; #5;
        $display("Case4 : currentKey=%h nextKey=%h", currentKey, nextKey);

        
        currentKey = 64'hCAFEBABEDEADC0DE; #5;
        $display("Case5 : currentKey=%h nextKey=%h", currentKey, nextKey);

        
        currentKey = 64'hDEADBEEFCAFED00D; #5;
        $display("Case6 : currentKey=%h nextKey=%h", currentKey, nextKey);

        
        currentKey = 64'h0ACE0ACE0ACE0ACE; #5;
        $display("Case7 : currentKey=%h nextKey=%h", currentKey, nextKey);

        
        currentKey = 64'h13579BDF2468ACE0; #5;
        $display("Case8 : currentKey=%h nextKey=%h", currentKey, nextKey);

        
        currentKey = 64'h02468ACE13579BDF; #5;
        $display("Case9 : currentKey=%h nextKey=%h", currentKey, nextKey);

        
        currentKey = 64'h55AA33CC77EE99BB; #5;
        $display("Case10: currentKey=%h nextKey=%h", currentKey, nextKey);

        
        currentKey = 64'h1122334455667788; #5;
        $display("Case11: currentKey=%h nextKey=%h", currentKey, nextKey);

        
        currentKey = 64'h8877665544332211; #5;
        $display("Case12: currentKey=%h nextKey=%h", currentKey, nextKey);

        
        currentKey = 64'hA1B2C3D4E5F60718; #5;
        $display("Case13: currentKey=%h nextKey=%h", currentKey, nextKey);

        
        currentKey = 64'h1F2E3D4C5B6A7988; #5;
        $display("Case14: currentKey=%h nextKey=%h", currentKey, nextKey);

        
        currentKey = 64'hFF00FF00FF00FF00; #5;
        $display("Case15: currentKey=%h nextKey=%h", currentKey, nextKey);

        
        currentKey = 64'h00FF00FF00FF00FF; #5;
        $display("Case16: currentKey=%h nextKey=%h", currentKey, nextKey);

        
        currentKey = 64'h1234567812345678; #5;
        $display("Case17: currentKey=%h nextKey=%h", currentKey, nextKey);

        
        currentKey = 64'h89ABCDEF89ABCDEF; #5;
        $display("Case18: currentKey=%h nextKey=%h", currentKey, nextKey);

        
        currentKey = 64'h0102030405060708; #5;
        $display("Case19: currentKey=%h nextKey=%h", currentKey, nextKey);

        
        currentKey = 64'hF1E2D3C4B5A69788; #5;
        $display("Case20: currentKey=%h nextKey=%h", currentKey, nextKey);

        $display("---- Testbench Completed ----");
    end

endmodule

