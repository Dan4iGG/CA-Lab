<<<<<<< HEAD
module HalfAdder
(
   bit1,
   bit2,
   sum,
   carry
);
 
  input  bit1;
  input  bit2;
  output sum;
  output carry;
 
  assign sum   = bit1 ^ bit2;  
  assign carry = bit1 & bit2;  
 
=======
module HalfAdder
(
   bit1,
   bit2,
   sum,
   carry
);
 
  input  bit1;
  input  bit2;
  output sum;
  output carry;
 
  assign sum   = bit1 ^ bit2;  
  assign carry = bit1 & bit2;  
 
>>>>>>> 4dcf63ba51e4d922f9c1cc83d9d3efef3a8f546f
endmodule 