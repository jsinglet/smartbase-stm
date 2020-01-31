package body Logger with
SPARK_Mode => On
is
   function Get_Tag(Category : Logger_Type) return String is
   begin
      case Category is
         when SmartBase_Log => return "[SmartBase]";
         when Bed_Log => return "[Bed]";
         when Bed_Bed_Control_Log => return "[Bed.Bed_Control]";
         when Bed_Timer_Task_Log => return "[Bed.Timer_Task]";
         when Any_GPIO_Log => return "[Any.GPIO]";
         when PI_GPIO_Log => return "[PI.GPIO]";
         when MQTT_Log => return "[MQQT]";
         when Commands_Log => return "[Commands]";
         when Any_LED_Log => return "[Any.LED]";
         when PI_LED_Log => return "[PI.LED]";
         when SB_HAL_LED_Log => return "[SB_HAL.LED]";
         when LED_Log => return "[LED]";
         when MotionDetector_Log => return "[MotionDetector]";
         when STM_GPIO_Log => return "[STM.GPIO]";
         when STM_LED_Log  => return "[STM.LED]";
      end case;

   end Get_Tag;

   procedure Log(Category : Logger_Type; Message : String) is separate;
end Logger;
