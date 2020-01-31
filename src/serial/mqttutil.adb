--  with Peripherals_Nonblocking; use Peripherals_Nonblocking;
--  with Serial_IO.Nonblocking; use Serial_IO.Nonblocking;
with Peripherals_Blocking;  use Peripherals_Blocking;
with Serial_IO.Blocking;    use Serial_IO.Blocking;
with Ada.Characters.Latin_1; use Ada.Characters.Latin_1;

with STM32.Device;       use STM32.Device;
with Serial_IO; use Serial_IO;
with HAL; use HAL;


package body MQTTUtil is

   procedure Initialize_Hardware is 
   begin
      Initialize (COM);
      Configure (COM, Baud_Rate => 115200);
      Set_Terminator (Incoming, To => LF);
   end Initialize_Hardware;
   
   
   procedure Put (This : String) is
   begin
      Set (Outgoing, To => This);
      Put (COM, Outgoing'Unchecked_Access);
      --Await_Transmission_Complete (Outgoing);
   end Put;

   procedure Put_Line (This : String) is
   begin
      Put(This & CR & LF);
   end Put_Line;
  
   
   
   function Get return String is 
   begin      
      Get (COM, Incoming'Unchecked_Access);
      ---Await_Reception_Complete (Incoming);
      
      return Content(Incoming);
   end Get;

end MQTTUtil;
