with Ada.Real_Time; use Ada.Real_Time;
with Device;
with Bed; use Bed;
with System_Test;
with Util;
with Logger; use Logger;
with SerialUtil;
with STM32.GPIO; use STM32.GPIO;


with Interfaces; use Interfaces;

procedure Main is

   EOL   : constant String := ASCII.LF & ASCII.HT;

   Timeout : Time := Ada.Real_Time.Clock;


   type Pixel_Color_Array is array (0..2) of Unsigned_32;


   The_Bed : Bed.Object := (
                         Head_Up_Pin   => Device.Head_Up_Pin,
                         Head_Down_Pin => Device.Head_Down_Pin,
                         Feet_Up_Pin   => Device.Feet_Up_Pin,
                         Feet_Down_Pin => Device.Feet_Down_Pin
                           );

begin


   SerialUtil.Initialize_Hardware;
   Device.GPIO.Initialize_Hardware;

   The_Bed.Start;


   loop
      System_Test.Test_Units(The_Bed);
      delay until Util.Next_N_Ms(1000);
   end loop;


end Main;



