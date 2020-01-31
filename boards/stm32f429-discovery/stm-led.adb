with STM.WS2812B; use STM.WS2812B;
with Logger; use Logger;
with STM32.Device;
with STM32.GPIO;
with STM.GPIO;

package body STM.LED is
     
   procedure Fade(This : STM_LED; LED_Color : Color; Steps : in Brightness_Array; Num_Samples : Integer) is
   begin
      
      Log(STM_LED_Log, "Doing Fade....");
      for I in Integer range 1..Num_Samples loop
         --Log(STM_LED_Log, "Step=" & I'Image & "Brightness=" & Steps.Elements(I)'Image);            
         This.Solid_On(LED_Color  => LED_Color,
                       Brightness => Integer(Steps(I))); 
      end loop;
      
   end Fade;
     
   procedure Fade_On(This : STM_LED; LED_Color : Color; Max_Brightness : Integer; Num_Samples : Integer := Default_Num_Samples) is
      Steps : Brightness_Array(1..Num_Samples);                                 
   begin
      
      Log(STM_LED_Log, "Fading On.");
      Get_Fade_Up_Range(Steps, Max_Brightness, Num_Samples);      
      This.Fade(LED_Color, Steps, Num_Samples);
      
   end Fade_On;

   
   procedure Spinner(This : STM_LED; Foreground : Color; Background : Color; Brightness : Integer; Position : in out Integer; Width : Integer) is 
   begin
      null;
   end Spinner;
   

   
   
   procedure Fade_Off(This : STM_LED; LED_Color : Color; Max_Brightness : Integer; Num_Samples : Integer := Default_Num_Samples) is
      Steps : Brightness_Array(1..Num_Samples);                              
   begin 
      Log(STM_LED_Log, "Fade Off...");      
      
      Get_Fade_Down_Range(Steps, Max_Brightness, Num_Samples);

      This.Fade(LED_Color, Steps, Num_Samples);
      
   end Fade_Off;
   
   
   procedure Pulse(This : STM_LED; LED_Color : Color; Num_Pulses: Integer; Pulse_Length : Integer; Max_Brightness : Integer) is
   begin
      Log(STM_LED_Log, "Pulse...");
      
      for I in Integer range 1..Num_Pulses loop 
         
         This.All_Off;

         This.Fade_On(LED_Color      => LED_Color,
                      Max_Brightness => Max_Brightness,
                      Num_Samples => Pulse_Length);
         
         
         This.Fade_Off(LED_Color      => LED_Color,
                       Max_Brightness => Max_Brightness,
                       Num_Samples => Pulse_Length);

      end loop;
      
      
   end Pulse;      
   
   
   procedure Initialize_Hardware(This : STM_LED) is      
   begin
      
      STM32.Device.Enable_Clock (STM.GPIO.To_STM_Pin(This.GPIO_Pin));
      
      STM.GPIO.To_STM_Pin(This.GPIO_Pin).Configure_IO(
                                                      (Mode => STM32.GPIO.Mode_Out,
                                                       Speed => STM32.GPIO.Speed_Very_High,
                                                       Output_Type => STM32.GPIO.Push_Pull,
                                                       Resistors => STM32.GPIO.Floating)
                                                     );
      
      This.All_Off;
   end Initialize_Hardware;
   
   procedure Solid_On(This : STM_LED; LED_Color : Color; Brightness : Integer) is 
   begin
     
      Set_Brightness(Brightness_Type(Brightness));

      Set_Pixel_Color(This.Number_Of_LEDs, LED_Color);
      
              
      Show;      
   end Solid_On;
   

   procedure All_Off(This : STM_LED) is 
   begin     
      This.Solid_On(LED_Color  => (0,0,0),
                    Brightness => 0);
   end All_Off;
   


end STM.LED;
