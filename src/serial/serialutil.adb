with Peripherals_Blocking;  use Peripherals_Blocking;
with Serial_IO.Blocking;    use Serial_IO.Blocking;


with STM32.Device;       use STM32.Device;
use Serial_IO;


package body SerialUtil is

   procedure Initialize_Hardware is 
   begin
      Initialize (COM);
      Configure (COM, Baud_Rate => 115200);
      Set_Terminator (Incoming, To => ASCII.CR);
   end Initialize_Hardware;
   
   
   procedure Put (This : String) is
   begin
      Set (Outgoing, To => This);
      Serial_IO.Blocking.Put (COM, Outgoing'Unchecked_Access);
   end Put;

   function Get return String is 
   begin      
      Get (COM, Incoming'Unchecked_Access);
      ---Await_Reception_Complete (Incoming);
      
      return Content(Incoming);
   end Get;

   procedure Put_Line (This : String) is
   begin
      Put(This & ASCII.CR & ASCII.LF);
   end Put_Line;


end SerialUtil;
