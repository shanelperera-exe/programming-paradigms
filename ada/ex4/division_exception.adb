with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Division_Exception is
   A, B, Result : Integer;
begin
   Put("Enter first number: ");
   Get(A);

   Put("Enter second number: ");
   Get(B);

   Result := A / B;
   Put_Line("Result =" & Integer'Image(Result));

exception
   when Constraint_Error =>
      Put_Line("Error: Cannot divide by zero.");
end Division_Exception;