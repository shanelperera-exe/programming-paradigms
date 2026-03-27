with Ada.Text_IO; use Ada.Text_IO;

package body Int_Stack is

   procedure Push(S : in out Stack; X : in Integer) is
   begin
      if S.Top = Max_Size then
         Put_Line("Stack Overflow");
      else
         S.Top := S.Top + 1;
         S.Data(S.Top) := X;
      end if;
   end Push;

   procedure Pop(S : in out Stack; X : out Integer) is
   begin
      if S.Top = 0 then
         Put_Line("Stack Underflow");
         X := 0;
      else
         X := S.Data(S.Top);
         S.Top := S.Top - 1;
      end if;
   end Pop;

   procedure Display(S : in Stack) is
   begin
      if S.Top = 0 then
         Put_Line("Stack is empty");
      else
         Put_Line("Stack elements are:");
         for I in reverse 1 .. S.Top loop
            Put_Line(Integer'Image(S.Data(I)));
         end loop;
      end if;
   end Display;

end Int_Stack;