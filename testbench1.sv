module tb ();
  logic clk, reset, mdir;
  logic [3:0] cont, cont1;
  contador u1(.clk(clk), .reset(reset), .cont(cont));
  initial
    begin
      clk = 0;
      mdir = 0;
      repeat (100)
        begin
        #50 clk = 1'b1;
        #50 clk = 1'b0;
        end
    end
  initial
    begin
    #10 reset = 1'b1;
  	#60 reset = 1'b0;
    end
  initial
    begin
      $display(cont);
      $dumpfile("dump.vcd");
      $dumpvars;
    end
  
endmodule