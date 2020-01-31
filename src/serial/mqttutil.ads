with Message_Buffers;       use Message_Buffers;

package MQTTUtil is

   Incoming : aliased Message (Physical_Size => 1024);  -- arbitrary size
   Outgoing : aliased Message (Physical_Size => 1024);  -- arbitrary size

   procedure Initialize_Hardware;
   
   procedure Put (This : String);

   procedure Put_Line (This : String);
   
   function Get return String;

end MQTTUtil;
