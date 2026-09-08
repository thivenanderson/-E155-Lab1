`timescale 1 ns/1 ns

module lab1_ta_hex_seg_decoder_tb();
  logic   [3:0]   s;      // 4-bit input switches
  logic   [6:0]   seg;    // 7 output segments


    lab1_ta_hex_seg_decoder dut (
        .s(s),
        .seg(seg)
    );

// Tests
initial begin
			s = 4'b0000;  	#1		assert (seg == 7'b1000000)
			 $display("PASSED! hex decoder behaves as desired at input: %b %b %b %b", s[3], s[2], s[1], s[0]);
        else 
            $error("FAILED! The hex decoder behaves incorrectly at input: %b %b %b %b", s[3], s[2], s[1], s[0]);
			s= 4'b0001;		#1	assert (seg == 7'b1111001) 
			 $display("PASSED! hex decoder behaves as desired at input: %b %b %b %b", s[3], s[2], s[1], s[0]);			
		else 
            $error("FAILED! The hex decoder behaves incorrectly at input: %b %b %b %b", s[3], s[2], s[1], s[0]);
              s = 4'b0010;   #1  assert (seg == 7'b0100100)
			 $display("PASSED! hex decoder behaves as desired at input: %b %b %b %b", s[3], s[2], s[1], s[0]);			  
        else 
            $error("FAILED! The hex decoder behaves incorrectly at input: %b %b %b %b", s[3], s[2], s[1], s[0]);
              s = 4'b0011;   #1  assert (seg == 7'b0110000) 
			 $display("PASSED! hex decoder behaves as desired at input: %b %b %b %b", s[3], s[2], s[1], s[0]);			  
        else 
            $error("FAILED! The hex decoder behaves incorrectly at input: %b %b %b %b", s[3], s[2], s[1], s[0]);
              s = 4'b0100;    #1 assert (seg == 7'b0011001)  
			 $display("PASSED! hex decoder behaves as desired at input: %b %b %b %b", s[3], s[2], s[1], s[0]);
        else 
            $error("FAILED! The hex decoder behaves incorrectly at input: %b %b %b %b", s[3], s[2], s[1], s[0]);
              s = 4'b0101;    #1 assert (seg == 7'b0010010)  
			 $display("PASSED! hex decoder behaves as desired at input: %b %b %b %b", s[3], s[2], s[1], s[0]);
        else 
            $error("FAILED! The hex decoder behaves incorrectly at input: %b %b %b %b", s[3], s[2], s[1], s[0]);
              s = 4'b0110;    #1 assert (seg == 7'b0000010)  
			 $display("PASSED! hex decoder behaves as desired at input: %b %b %b %b", s[3], s[2], s[1], s[0]);
        else 
            $error("FAILED! The hex decoder behaves incorrectly at input: %b %b %b %b", s[3], s[2], s[1], s[0]);
              s = 4'b0111;   #1  assert (seg == 7'b1111000)
			 $display("PASSED! hex decoder behaves as desired at input: %b %b %b %b", s[3], s[2], s[1], s[0]);			  
        else 
            $error("FAILED! The hex decoder behaves incorrectly at input: %b %b %b %b", s[3], s[2], s[1], s[0]);
              s = 4'b1000;   #1  assert (seg == 7'b0000000)
			 $display("PASSED! hex decoder behaves as desired at input: %b %b %b %b", s[3], s[2], s[1], s[0]);			  
        else 
            $error("FAILED! The hex decoder behaves incorrectly at input: %b %b %b %b", s[3], s[2], s[1], s[0]);
              s = 4'b1001;    #1 assert (seg == 7'b0011000)
			 $display("PASSED! hex decoder behaves as desired at input: %b %b %b %b", s[3], s[2], s[1], s[0]);			  
        else 
            $error("FAILED! The hex decoder behaves incorrectly at input: %b %b %b %b", s[3], s[2], s[1], s[0]);
              s = 4'b1010;   #1  assert (seg == 7'b0001000) 
			 $display("PASSED! hex decoder behaves as desired at input: %b %b %b %b", s[3], s[2], s[1], s[0]);			  
        else 
            $error("FAILED! The hex decoder behaves incorrectly at input: %b %b %b %b", s[3], s[2], s[1], s[0]);
              s = 4'b1011;   #1  assert (seg ==7'b0000011)
			 $display("PASSED! hex decoder behaves as desired at input: %b %b %b %b", s[3], s[2], s[1], s[0]);			  
        else 
            $error("FAILED! The hex decoder behaves incorrectly at input: %b %b %b %b", s[3], s[2], s[1], s[0]);
              s = 4'b1100;   #1  assert (seg == 7'b1000110) 
			 $display("PASSED! hex decoder behaves as desired at input: %b %b %b %b", s[3], s[2], s[1], s[0]);			  
        else 
            $error("FAILED! The hex decoder behaves incorrectly at input: %b %b %b %b", s[3], s[2], s[1], s[0]);
              s = 4'b1101;   #1  assert (seg == 7'b0100001)
			 $display("PASSED! hex decoder behaves as desired at input: %b %b %b %b", s[3], s[2], s[1], s[0]);			  
        else 
            $error("FAILED! The hex decoder behaves incorrectly at input: %b %b %b %b", s[3], s[2], s[1], s[0]);
              s = 4'b1110;   #1  assert (seg ==7'b0000110) 
			 $display("PASSED! hex decoder behaves as desired at input: %b %b %b %b", s[3], s[2], s[1], s[0]);			  
        else 
            $error("FAILED! The hex decoder behaves incorrectly at input: %b %b %b %b", s[3], s[2], s[1], s[0]);
           s = 4'b1111;    #1 assert (seg == 7'b0001110)
			 $display("PASSED! hex decoder behaves as desired at input: %b %b %b %b", s[3], s[2], s[1], s[0]);		   
        else 
            $error("FAILED! The hex decoder behaves incorrectly at input: %b %b %b %b", s[3], s[2], s[1], s[0]);
	end
endmodule
		 