module contador (input logic clk, reset,
                 output logic mdir,
                 output logic [3:0]cont, cont1, totcont);
  always_ff @(posedge clk)
    begin
      if (reset)
        cont = 4'b0;
      if (mdir == 1)
        begin
          totcont = cont;
          cont = cont - 1;
          cont1 = cont + 1;
        end
      
      else
        begin
          totcont = cont1;
        cont = cont + 1;
          cont1 = cont - 1;
        end
      if (cont == 4'd15)
        begin
          mdir = 1;
        end
      
      if (cont == 4'd0)
        mdir = 0;
    end
endmodule
