module Test;
  reg     a, b;
  wire    c;
  
  top test_top(a, b, c);
  
  initial  begin
    $dumpfile("result.vcd");
    $dumpvars;
    a=0;b=0;
    #100
    a=0;b=1;
    #100
    a=1;b=0;
    #100
    a=1;b=1;
  end

  initial #400 $finish;
endmodule