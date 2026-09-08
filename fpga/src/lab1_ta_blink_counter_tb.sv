`timescale 1 ns/1 ns

module lab1_ta_blink_counter_tb();
  logic           clk;    // system clock
  logic           reset;  // active low reset
  logic           enable; //active high enable
  logic     led;    // 2 output leds

    lab1_ta_blink_counter #(.WIDTH(3), .MAX_COUNT(5)) dut (
        .clk(clk),
        .reset(reset),
		.enable(enable),
        .led(led)
    );

  // generate clock
  always begin
      clk = 0; #5;
      clk = 1; #5;
  end
  
    // apply stimuli and check outputs
  initial begin
    reset = 0;
	enble=0;
    	@(posedge clk);
    	@(posedge clk);
	reset = 1;
	enable = 1;
	
	//test max couht
	reapeat(6) //6 counts wit a max of 5
	@(posedge clk);
	#1;
	assert (led ==1)
	$display("Passed! The blink counter behaves as desired at time: %0t.", $time); 
	else 
            $error("FAILED! The blink counter behaves incorrectly at time: %0t.", $time); 
	
	repeat (6)
    @(posedge clk);

    #1;
	assert (led == 0)
		$display("Passed! The blink counter behaves as desired at time: %0t.", $time); 
	else 
            $error("FAILED! The blink counter behaves incorrectly at time: %0t.", $time); 
	//test enable
	enable =0;
	
    repeat (5)
    @(posedge clk);

    #1;
	assert (led == 0)
		$display("Passed! The enable function behaves as desired at time: %0t.", $time); 
	else 
            $error("FAILED! The enable function behaves incorrectly at time: %0t.", $time); 
	enable = 1;

    repeat (6)
    @(posedge clk);

    #1;

	assert (led == 1)
	$display("PASSED! The enable function behaves as desired at time: %0t.", $time); 
	else 
            $error("FAILED! The enable function behaves incorrectly at time: %0t.", $time);
	//test reset
	reset=0;
	@(posedge clk);
    #1;
	assert (led == 0)
            $display("PASSED! The reset function behaves as desired at time: %0t.", $time);
	else 
            $error("FAILED! The reset function behaves incorrectly at time: %0t.", $time);
	$stop;
	end
endmodule
	
  
  