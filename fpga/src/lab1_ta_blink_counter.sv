//Name: Thiven Anderson
//Email: thanderson@g.hmc.edu
//Date: 9/7/2026
//Description: Module to blink LED at 2.4Hz driven by 24MHz oscillator
module lab1_ta_blink_counter #(
		parameter WIDTH = 23,
		parameter MAX_COUNT = 5_000_399)(
		input logic clk, reset, enable,
		output logic led
		);
	
	logic [WIDTH-1:0] counter;
	
	always_ff @(posedge clk) begin
		
			if (!reset) begin
				counter <= 0;
				led <= 0;
				end
			 else if (enable) begin
				 if (counter == MAX_COUNT)begin
					counter <= 0;
					led <= ~led;
				 end
				else begin
					counter <= counter +1;
				end
			end
			else
				counter <= counter;
	end
endmodule