generic
   type Element_Type is private;
   with procedure Put_Item(X : in Element_Type);

package Generic_Queue is
   type Queue is private;

   procedure Enqueue(Q : in out Queue; X : in Element_Type);
   procedure Dequeue(Q : in out Queue; X : out Element_Type);
   procedure Display(Q : in Queue);

private
   Max_Size : constant Integer := 10;
   type Queue_Array is array(1 .. Max_Size) of Element_Type;

   type Queue is record
      Data  : Queue_Array;
      Front : Integer := 1;
      Rear  : Integer := 0;
   end record;
end Generic_Queue;