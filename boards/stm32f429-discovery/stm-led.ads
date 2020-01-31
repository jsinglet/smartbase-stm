with SB_HAL.LED; use SB_HAL.LED;
package STM.LED is

   type STM_LED is new LED_Type with null record;

   overriding
   procedure Fade_On(This : STM_LED; LED_Color : Color; Max_Brightness : Integer; Num_Samples : Integer := Default_Num_Samples);
   
   overriding
   procedure Fade_Off(This : STM_LED; LED_Color : Color; Max_Brightness : Integer; Num_Samples : Integer := Default_Num_Samples);
   
   overriding
   procedure Pulse(This : STM_LED; LED_Color : Color; Num_Pulses: Integer; Pulse_Length : Integer; Max_Brightness : Integer);   

   overriding
   procedure Initialize_Hardware(This : STM_LED);
   
   overriding
   procedure Solid_On(This : STM_LED; LED_Color : Color; Brightness : Integer);

   overriding
   procedure All_Off(This : STM_LED);

   overriding
   procedure Spinner(This : STM_LED; Foreground : Color; Background : Color; Brightness: Integer; Position : in out Integer; Width : Integer);

end STM.LED;
