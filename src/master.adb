--with CLI;
with Bed; use Bed;
with Logger; use Logger;
with Ada.Real_time; use Ada.Real_Time;
with RandomInteger;
with System;
with Device; use Device;
with SB_HAL.GPIO; use SB_HAL.GPIO;
--with MQTT;
with Util; use Util;
with SB_HAL.LED; use SB_HAL.LED;
with LED; use LED;
with MotionDetector;
with SerialUtil;
package body Master is

   The_Bed : Bed.Object := (
                         Head_Up_Pin   => Device.Head_Up_Pin,
                         Head_Down_Pin => Device.Head_Down_Pin,
                         Feet_Up_Pin   => Device.Feet_Up_Pin,
                         Feet_Down_Pin => Device.Feet_Down_Pin
                           );
   procedure Init is
   begin
      Device.GPIO.Initialize_Hardware;
      Device.LED.Initialize_Hardware;
      MotionDetector.Initialize_Hardware;
      SerialUtil.Initialize_Hardware;
   end Init;

   
   
   task body Master_Task is
   
   begin
               
      Init;
      
      Log(SmartBase_Log, "Default Priority for this system: " & System.Default_Priority'Image);

      Log(SmartBase_Log, "Starting");

      Log(SmartBase_Log, "Starting Bed");

      The_Bed.Start;

      MQTT.Control.Enable(The_Bed);

      Log(SmartBase_Log, "Starting CLI");
      CLI.Command_Control.Enable(The_Bed);

      loop
         delay until Util.Next_N_Ms(5000);
      end loop;
   
      
   end Master_Task;
   

end Master;
