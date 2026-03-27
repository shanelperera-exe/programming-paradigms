with Ada.Text_IO; use Ada.Text_IO;

procedure Parameter_Modes is

   procedure Pass_By_Value(X : in Integer) is
   begin
      Put_Line("Inside Pass_By_Value, X =" & Integer'Image(X));
      -- X := X + 1;  -- not allowed for in parameter
   end Pass_By_Value;

   procedure Pass_By_Result(X : out Integer) is
   begin
      X := 50;
   end Pass_By_Result;

   procedure Pass_By_Reference(X : in out Integer) is
   begin
      X := X + 10;
   end Pass_By_Reference;

   A : Integer := 5;
   B : Integer := 0;
   C : Integer := 20;

begin
   Put_Line("Before Pass_By_Value, A =" & Integer'Image(A));
   Pass_By_Value(A);
   Put_Line("After Pass_By_Value, A =" & Integer'Image(A));
   New_Line;

   Put_Line("Before Pass_By_Result, B =" & Integer'Image(B));
   Pass_By_Result(B);
   Put_Line("After Pass_By_Result, B =" & Integer'Image(B));
   New_Line;

   Put_Line("Before Pass_By_Reference, C =" & Integer'Image(C));
   Pass_By_Reference(C);
   Put_Line("After Pass_By_Reference, C =" & Integer'Image(C));
end Parameter_Modes;