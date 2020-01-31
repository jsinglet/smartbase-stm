with SB_HAL.GPIO; use SB_HAL.GPIO;
with STM.GPIO;
with STM.LED;

package Device is

   -- general purpose GPIOs

   PF13 : constant Pin_Type := 0;  -- LED

   PG11 : constant Pin_Type := 1;  -- For bed controls
   PF14 : constant Pin_Type := 2;
   PF15 : constant Pin_Type := 3;
   PG1 : constant Pin_Type  := 4;

   PG7 : constant Pin_Type := 5;   -- For motion sensors
   PG6 : constant Pin_Type := 6;
   PG5 : constant Pin_Type := 7;

   Head_Up_Pin : constant Pin_Type := PG11;
   Head_Down_Pin : constant Pin_Type := PF14;
   Feet_Up_Pin : constant Pin_Type := PF15;
   Feet_Down_Pin : constant Pin_Type := PG1;

   LED_Pin : constant Pin_Type := PF13;

   Motion_Detector_Pins : Pin_Array := (PG5, PG6, PG7);

   GPIO    : STM.GPIO.STM_GPIO;
   LED     :  STM.LED.STM_LED := (GPIO_Pin => LED_Pin, Number_Of_LEDs => 10);



end Device;
