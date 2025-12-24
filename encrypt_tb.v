`timescale 1ns/1ps

module Encrypt_tb;

    reg [63:0] plaintext;
    reg [63:0] secretKey;

    wire [63:0] ciphertext;

    Encrypt uut (
        .plaintext(plaintext),
        .secretKey(secretKey),
        .ciphertext(ciphertext)
    );

    initial begin
        $display("   plaintext                  |   secretKey                   |   ciphertext");
        $display("---------------------------------------------------------------");


        plaintext = 64'h0000000000000000; secretKey = 64'h0000000000000000; #5;
        $display("%h | %h | %h", plaintext, secretKey, ciphertext);

        plaintext = 64'hFFFFFFFFFFFFFFFF; secretKey = 64'h0000000000000000; #5;
        $display("%h | %h | %h", plaintext, secretKey, ciphertext);

        plaintext = 64'hAAAAAAAAAAAAAAAA; secretKey = 64'h5555555555555555; #5;
        $display("%h | %h | %h", plaintext, secretKey, ciphertext);

        plaintext = 64'h123456789ABCDEF0; secretKey = 64'h0F1E2D3C4B5A6978; #5;
        $display("%h | %h | %h", plaintext, secretKey, ciphertext);

        plaintext = 64'h89ABCDEF01234567; secretKey = 64'h76543210FEDCBA98; #5;
        $display("%h | %h | %h", plaintext, secretKey, ciphertext);

        plaintext = 64'hDEADBEEFCAFEBABE; secretKey = 64'h0123456789ABCDEF; #5;
        $display("%h | %h | %h", plaintext, secretKey, ciphertext);

        plaintext = 64'hFEDCBA9876543210; secretKey = 64'h0011223344556677; #5;
        $display("%h | %h | %h", plaintext, secretKey, ciphertext);

        plaintext = 64'hCAFED00D12345678; secretKey = 64'h0BADF00D87654321; #5;
        $display("%h | %h | %h", plaintext, secretKey, ciphertext);

        plaintext = 64'h1111111111111111; secretKey = 64'h2222222222222222; #5;
        $display("%h | %h | %h", plaintext, secretKey, ciphertext);

        plaintext = 64'hAAAAAAAA55555555; secretKey = 64'h33333333CCCCCCCC; #5;
        $display("%h | %h | %h", plaintext, secretKey, ciphertext);

        plaintext = 64'h0F0F0F0F0F0F0F0F; secretKey = 64'hF0F0F0F0F0F0F0F0; #5;
        $display("%h | %h | %h", plaintext, secretKey, ciphertext);

        plaintext = 64'h13579BDF2468ACE0; secretKey = 64'hFEDCBA9876543210; #5;
        $display("%h | %h | %h", plaintext, secretKey, ciphertext);

        plaintext = 64'hAAAAAAAAFFFFFFFF; secretKey = 64'h5555555500000000; #5;
        $display("%h | %h | %h", plaintext, secretKey, ciphertext);

        plaintext = 64'h0000FFFF0000FFFF; secretKey = 64'hFFFF0000FFFF0000; #5;
        $display("%h | %h | %h", plaintext, secretKey, ciphertext);

        plaintext = 64'h7FFFFFFFFFFFFFFF; secretKey = 64'h8000000000000000; #5;
        $display("%h | %h | %h", plaintext, secretKey, ciphertext);

        plaintext = 64'hCAFEBABECAFEBABE; secretKey = 64'hDEADBEEFDEADBEEF; #5;
        $display("%h | %h | %h", plaintext, secretKey, ciphertext);

        plaintext = 64'h0123456789ABCDEF; secretKey = 64'hF0E1D2C3B4A59687; #5;
        $display("%h | %h | %h", plaintext, secretKey, ciphertext);

        plaintext = 64'hABCDEF0123456789; secretKey = 64'h13579BDF2468ACE0; #5;
        $display("%h | %h | %h", plaintext, secretKey, ciphertext);

        plaintext = 64'hAAAAAAAA00000000; secretKey = 64'h55555555FFFFFFFF; #5;
        $display("%h | %h | %h", plaintext, secretKey, ciphertext);

        plaintext = 64'h1122334455667788; secretKey = 64'h99AABBCCDDEEFF00; #5;
        $display("%h | %h | %h", plaintext, secretKey, ciphertext);

        $display("---- Testbench Completed ----");

    end

endmodule
