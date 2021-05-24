/////////////////////////////////////////////
///  Testbench: Lemmings (2-D)   \\\\\\\\\\\\\\
///  Designed by: Shubhi Agrawal   \\\\\\\\\
///  Date: 24-04-2021     \\\\\\\\\\\\\\\\\\\
/////////////////////////////////////////////



module test;

reg clk=0;
reg areset, bump_left, bump_right;
wire walk_left, walk_right;

top_module asd( clk, areset, bump_left, bump_right, walk_left, walk_right);   

always #5 clk = ~clk;

initial
    begin
      areset = 1; 
      #3
     repeat(20)
      begin
       areset = 0; 
       bump_left = {$random};
       bump_right = ~bump_left;
       #10;
    end
  end

initial
 begin
  $dumpfile("lem.vcd");
  $dumpvars();
  #300 $finish;
 end

endmodule



 