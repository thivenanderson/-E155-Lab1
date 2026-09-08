//Name: Thiven Anderson
//Email: thanderson@g.hmc.edu
//Date: 9/7/2026
//Description: Top level module for lab 1 of E155
module lab1_ta (
    input  logic [3:0] s,
	input logic reset, enable,
    output logic [2:0] led,
    output logic [6:0] seg
);

    logic int_osc;

    // Internal oscillator
    HSOSC #(.CLKHF_DIV(2'b01))
        hf_osc (
            .CLKHFPU(1'b1),
            .CLKHFEN(1'b1),
            .CLKHF(int_osc)
        );

    // LED comb logic
    assign led[0] = s[1] ^ s[0];
    assign led[1] = s[3] & s[2];

    // 7-segment decoder
    lab1_ta_hex_seg_decoder decoder (
        .s(s),
        .seg(seg)
    );

    // Blink counter logic
    lab1_ta_blink_counter #(
    .WIDTH(23),
    .MAX_COUNT(5_000_399) 	 	
		)counter(
        .clk(int_osc),
		.reset(reset),
		.enable(enable),
        .led(led[2])
    );

endmodule