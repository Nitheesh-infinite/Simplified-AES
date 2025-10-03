
module Encrypt(
    input [63:0]  plaintext,
    input [63:0]  secretKey,
    output [63:0] ciphertext 
);
    wire [63:0] round_keys[0:10];
    wire [63:0] round_states[0:10];
    assign round_keys[0] = secretKey;

    genvar k;
    generate
        for (k = 0; k < 10; k = k + 1) begin
            NextKey key (
                .currentKey(round_keys[k]),
                .nextKey(round_keys[k+1])
            );
        end
    endgenerate
    
    AddRoundKey preroundadd (
        .currentState(plaintext),
        .roundKey(round_keys[0]),
        .nextState(round_states[0])
    );

    genvar i;
    generate
        for (i = 0; i < 10; i = i + 1) begin
            Round round (
                .currentState(round_states[i]),
                .roundKey(round_keys[i+1]),
                .nextState(round_states[i+1])
            );
        end
    endgenerate

    assign ciphertext = round_states[10];

endmodule

module Round(
    input  [63:0] currentState,
    input  [63:0] roundKey,
    output [63:0] nextState    
);
    wire [63:0] after_sub_bytes;
    wire [63:0] after_shift_rows;

    genvar i;
    generate
        for (i = 0; i < 16; i = i + 1) begin
            SBox sbox (
                .in(currentState[i*4 +: 4]),   
                .out(after_sub_bytes[i*4 +: 4])  
            );
        end
    endgenerate

    ShiftRows shiftrows (
        .currentState(after_sub_bytes),
        .nextState(after_shift_rows)
    );

    AddRoundKey addroundkey (
        .currentState(after_shift_rows),
        .roundKey(roundKey),
        .nextState(nextState)
    );

endmodule


module SBox(
    input [3:0]in,
    output [3:0]out
);

    wire a,b,c,d;
    assign a = in[3];
    assign b = in[2];
    assign c = in[1];
    assign d = in[0];
    assign  out[3] = (!a&b&!c&!d)|(a&!b&!c&!d)|(!a&!b&!c&d)|(a&c&d)|(b&c&d)|(a&b&d)|(!a&b&c);
    assign  out[2] = (!a&!c&!d)|(!c&!d&b)|(a&b&!c)|(!b&c&d)|(!a&c&b&!d)|(a&!b&c&!d);
    assign  out[1] = (!a&!b&!c)|(a&!b&!c)|(!c&d)|(!a&b&c&!d)|(a&!b&c&!d);
    assign  out[0] = (!c&!d&b)|(!c&d&!a)|(a&b&c)|(c&!d&b)|(c&!d&a);
endmodule



module NextKey(
    input  [63:0] currentKey,
    output [63:0] nextKey
);
    assign nextKey [63:4] = currentKey [59:0];
    assign nextKey[3] = currentKey[63];
    assign nextKey[2] = currentKey[62];
    assign nextKey[1] = currentKey[61];
    assign nextKey[0] = currentKey[60];
endmodule

module ShiftRows(
    input  [63:0] currentState ,
    output [63:0] nextState    
);

    assign nextState[15:0] = currentState[15:0];
    assign nextState[31:20] = currentState[27:16];
    assign nextState[19:16] = currentState[31:28];
    assign nextState[47:40] = currentState[39:32];
    assign nextState[39:32] = currentState[47:40];
    assign nextState[63:60] = currentState[51:48];
    assign nextState[59:48] = currentState[63:52];
endmodule

module AddRoundKey(
    input  [63:0] currentState ,
    input  [63:0] roundKey     ,
    output [63:0] nextState    
);
    assign nextState = roundKey ^ currentState;
endmodule
