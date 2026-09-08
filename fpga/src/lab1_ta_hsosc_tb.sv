`timescale 1 ns/1 ns
module lab1_ta_hsosc_tb ();
    logic [3:0] s;
    logic reset,enable;
    logic [2:0] led;
    logic [6:0] seg;


	    lab1_ta dut (
		 .s(s),
        .reset(reset),
		.enable(enable),
        .led(led),
		.seg(seg)
		);
	
	//test HSOSC
integer edge_count=0;
always @(posedge dut.int_osc)
    edge_count++;

initial begin
    reset = 1;
    enable = 1;

    #300;

    assert (edge_count > 0)
		$display("PASSED! Oscillator produced rising edges.");
    else
        $error("FAILED! Oscillator produced no rising edges.");

    $stop;
endendmodule
