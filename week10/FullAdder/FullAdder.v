<<<<<<< HEAD
module FullAdder 
  (
   bit1,
   bit2,
   Icarry,
   sum,
   Ocarry
   );
 
  input  bit1;
  input  bit2;
  input  Icarry;
  output sum;
  output Ocarry;
 
  wire   W1;
  wire   W2;
  wire   W3;
       
  assign W1 = bit1 ^ bit2;
  assign W2 = W1 & Icarry;
  assign W3 = bit1 & bit2;
 
  assign sum   = W1 ^ Icarry;
  assign Ocarry = W2 | W3;
   
=======
module FullAdder 
  (
   bit1,
   bit2,
   Icarry,
   sum,
   Ocarry
   );
 
  input  bit1;
  input  bit2;
  input  Icarry;
  output sum;
  output Ocarry;
 
  wire   W1;
  wire   W2;
  wire   W3;
       
  assign W1 = bit1 ^ bit2;
  assign W2 = W1 & Icarry;
  assign W3 = bit1 & bit2;
 
  assign sum   = W1 ^ Icarry;
  assign Ocarry = W2 | W3;
   
>>>>>>> 4dcf63ba51e4d922f9c1cc83d9d3efef3a8f546f
endmodule