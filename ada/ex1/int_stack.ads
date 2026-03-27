package Int_Stack is
   type Stack is private;

   procedure Push(S : in out Stack; X : in Integer);
   procedure Pop(S : in out Stack; X : out Integer);
   procedure Display(S : in Stack);

private
   Max_Size : constant Integer := 10;

   type Stack_Array is array(1 .. Max_Size) of Integer;

   type Stack is record
      Data : Stack_Array := (others => 0);
      Top  : Integer := 0;
   end record;
end Int_Stack;