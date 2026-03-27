with Ada.Text_IO; use Ada.Text_IO;

procedure Task_Example is

   task Numbers_Task;
   task Letters_Task;

   task body Numbers_Task is
   begin
      for I in 1 .. 10 loop
         Put_Line("Number: " & Integer'Image(I));
      end loop;
   end Numbers_Task;

   task body Letters_Task is
      C : Character := 'A';
   begin
      for I in 1 .. 10 loop
         Put_Line("Letter: " & C);
         C := Character'Succ(C);
      end loop;
   end Letters_Task;

begin
   null;
end Task_Example;