with Ada.Text_IO; use Ada.Text_IO;

package body Generic_Queue is

   procedure Enqueue(Q : in out Queue; X : in Element_Type) is
   begin
      if Q.Rear = Max_Size then
         Put_Line("Queue Full");
      else
         Q.Rear := Q.Rear + 1;
         Q.Data(Q.Rear) := X;
      end if;
   end Enqueue;

   procedure Dequeue(Q : in out Queue; X : out Element_Type) is
   begin
      if Q.Front > Q.Rear then
         Put_Line("Queue Empty");
      else
         X := Q.Data(Q.Front);
         Q.Front := Q.Front + 1;
      end if;
   end Dequeue;

   procedure Display(Q : in Queue) is
   begin
      if Q.Front > Q.Rear then
         Put_Line("Queue is empty");
      else
         Put_Line("Queue elements are:");
         for I in Q.Front .. Q.Rear loop
            Put_Item(Q.Data(I));
         end loop;
      end if;
   end Display;

end Generic_Queue;