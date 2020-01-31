package Logger with 
  SPARK_Mode => On 
is    
   type Logger_Type is
  (
   SmartBase_Log,
   Bed_Log,
   Bed_Bed_Control_Log,
   Bed_Timer_Task_Log,
   Any_GPIO_Log,
   PI_GPIO_Log,
   MQTT_Log,
   Commands_Log,
   Any_LED_Log,
   PI_LED_Log,
   SB_HAL_LED_Log,
   LED_Log,
   MotionDetector_Log,
   STM_GPIO_Log,
   STM_LED_Log
     
  );

   
   function Get_Tag(Category : Logger_Type) return String;
   procedure Log(Category : Logger_Type; Message : String);
  
end Logger;
