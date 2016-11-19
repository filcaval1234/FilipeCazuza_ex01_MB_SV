module contador (input logic clk, reset,
                 output logic mdir,
                 output logic [3:0]cont);
  always_ff @(posedge clk)
    begin
      if (reset)
        cont = 4'b0;
      if (mdir == 1)
        cont = cont - 1;
      else
        cont = cont + 1;
      if (cont == 4'd15)
        mdir = 1;
      if (cont == 4'd0)
        mdir = 0;
    end
endmodule
