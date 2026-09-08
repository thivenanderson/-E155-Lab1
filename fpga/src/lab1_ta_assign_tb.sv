`timescale 1 ns/1 ns
module lab1_ta_assign_tb ();
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
	
initial begin
	reset=1;
	enable=1;
	s=4'b0000;
	#1;
	assert (led[0] == 0 & led[1] == 0)
			$display("PASSED! at input %b %b %b %b", s[3], s[2], s[1], s[0]);
	else
		$error("FAILED! at input %b %b %b %b", s[3], s[2], s[1], s[0]);
	s=4'b0001;
	#1;
	assert (led[0] == 1 & led[1] == 0)
			$display("PASSED! at input %b %b %b %b", s[3], s[2], s[1], s[0]);
	else
		$error("FAILED! at input %b %b %b %b", s[3], s[2], s[1], s[0]);
	s=4'b1100;
	#1;
	assert (led[0] == 0 & led[1] == 1)
			$display("PASSED! at input %b %b %b %b", s[3], s[2], s[1], s[0]);
	else
		$error("FAILED! at input %b %b %b %b", s[3], s[2], s[1], s[0]);	
	s=4'b1110;
	#1;
	assert (led[0] == 1 & led[1] == 1)
			$display("PASSED! at input %b %b %b %b", s[3], s[2], s[1], s[0]);
	else
		$error("FAILED! at input %b %b %b %b", s[3], s[2], s[1], s[0]);
	end
endmodule