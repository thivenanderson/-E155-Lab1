`timescale 1 ns/1 ns
module lab1_ta_module_connection_tb ();
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
	reset=0;
	enable=0;
	#10;

	s = 4'b1000;
	#10;
	assert (seg == 7'b0000000)
			$display("PASSED! The top level module successfully connected to the hex decoder: %0t.", $time); 
	else
		$error("FAILED! The top level module failed to connect to the hex decoder: %0t.", $time); 
	@(posedge dut.int_osc);

	reset=1;
	enable=1;

// MAX_COUNT = 5 means wait through the count sequence
repeat (6) begin
    @(posedge dut.int_osc);
	end
#1;
	assert (led[2]== 1)
				$display("PASSED! The top level module successfully connected to the blink counter: %0t.", $time);
	else 
            $error("FAILED! The top level module failed to connect to the blink counter: %0t.", $time); 
	
	$stop;
	end
endmodule