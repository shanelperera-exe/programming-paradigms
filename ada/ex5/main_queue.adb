with Ada.Text_IO; use Ada.Text_IO;
with Generic_Queue;

procedure Main_Queue is

   procedure Put_Integer(X : in Integer) is
   begin
      Put_Line(Integer'Image(X));
   end Put_Integer;

   subtype Small_String is String(1 .. 5);

   procedure Put_String(X : in Small_String) is
   begin
      Put_Line(X);
   end Put_String;

   package Int_Queue is new Generic_Queue
     (Element_Type => Integer, Put_Item => Put_Integer);
   use Int_Queue;

   package String_Queue is new Generic_Queue
     (Element_Type => Small_String, Put_Item => Put_String);
   use String_Queue;

   Q1 : Int_Queue.Queue;
   Q2 : String_Queue.Queue;

   N  : Integer;
   S  : Small_String;

begin
   Int_Queue.Enqueue(Q1, 100);
   Int_Queue.Enqueue(Q1, 200);
   Int_Queue.Enqueue(Q1, 300);

   Put_Line("Integer Queue:");
   Int_Queue.Display(Q1);

   Int_Queue.Dequeue(Q1, N);
   Put_Line("Dequeued Integer:" & Integer'Image(N));
   New_Line;

   String_Queue.Enqueue(Q2, "HELLO");
   String_Queue.Enqueue(Q2, "WORLD");

   Put_Line("String Queue:");
   String_Queue.Display(Q2);

   String_Queue.Dequeue(Q2, S);
   Put_Line("Dequeued String: " & S);
end Main_Queue;