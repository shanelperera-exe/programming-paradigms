with Ada.Text_IO; use Ada.Text_IO;
with Int_Stack; use Int_Stack;

procedure Main_Stack is
   S : Stack;
   X : Integer;
begin
   Push(S, 10);
   Push(S, 20);
   Push(S, 30);

   Display(S);

   Pop(S, X);
   Put_Line("Popped element:" & Integer'Image(X));

   Display(S);
end Main_Stack;