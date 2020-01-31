with Logger; use Logger;
with Device; 
with STM32.Device; 
with HAL.GPIO;
with STM32.EXTI;    use STM32.EXTI;



package body STM.GPIO is
   
   
   function To_STM_Pin(Pin : Pin_Type) return STM32.GPIO.GPIO_Point is
   begin      
      case Pin is
         when Device.PF13 => return STM32.Device.PF13;
         when Device.PF14 => return STM32.Device.PF14;
         when Device.PF15 => return STM32.Device.PF15;
         when Device.PG1 => return STM32.Device.PG1;
         when Device.PG11 => return STM32.Device.PG11;
         when Device.PG5 => return STM32.Device.PG5;
         when Device.PG6 => return STM32.Device.PG6;
         when Device.PG7 => return STM32.Device.PG7;
         when others => raise Unknown_Pin_Configuration;
      end case;
   end To_STM_Pin;
      
   procedure Initialize_Hardware(This : STM_GPIO) is 
   begin   
      Log(STM_GPIO_Log, "Initializing Hardware....");      
   end Initialize_Hardware;
      
   procedure Pin_Mode(This : STM_GPIO; Pin : Pin_Type; Mode: Mode_Type) is 
      STM_Pin : STM32.GPIO.GPIO_Point := To_STM_Pin(Pin);
   begin   
      Log(STM_GPIO_Log, "Setting Pin=" & Pin'Image & " to Mode=" & Mode'Image); 
            
      STM32.Device.Enable_Clock (STM_Pin);
      
      case Mode is
         when Output => STM_Pin.Set_Mode(HAL.GPIO.Output);
         when Input => STM_Pin.Set_Mode(HAL.GPIO.Input);
      end case;
            
   end Pin_Mode;
   
   
   procedure Register_ISR_1(This : STM_GPIO; Pins : Pin_Array; Mode: Edge_Type; Callback : ISR_Callback_Function) is
      Edge : constant External_Triggers :=
        (if Mode = RISING then Interrupt_Rising_Edge
         else Interrupt_Falling_Edge);
   begin
      
      -- set up the callback
      ISR_1 := Callback; 

      -- configure all the pins
      for I in Pins'Range loop
         
         declare 
            STM_Pin : constant STM32.GPIO.GPIO_Point := To_STM_Pin(Pins(I));
         begin
            
            -- enable the clock
            STM32.Device.Enable_Clock(STM_Pin);
            
            -- configure the pin
            STM_Pin.Configure_IO
              ((Mode      => STM32.GPIO.Mode_In,
                Resistors => (if Mode = RISING then STM32.GPIO.Pull_Down else STM32.GPIO.Pull_Up)));
            
            
            STM_Pin.Configure_Trigger(Edge);
         end;
         
         
      end loop;            
      
      
   end Register_ISR_1;
   
   procedure Digital_Write(This : STM_GPIO; Pin : Pin_Type; Value : Value_Type) is
      STM_Pin : STM32.GPIO.GPIO_Point := To_STM_Pin(Pin);
   begin
      Log(STM_GPIO_Log, "Digital Write to Pin=" & Pin'Image & " with Value=" & Value'Image);
      
      case Value is
         when High => STM_Pin.Set;
         when Low => STM_Pin.Clear;
         when Floating => null;
      end case;
      
   end Digital_Write;
   
   function Digital_Read(This : STM_GPIO; Pin : Pin_Type;  Default_Value: in Value_Type := Floating) return Value_Type is
      STM_Pin : STM32.GPIO.GPIO_Point := To_STM_Pin(Pin);
      Read_Value : Value_Type;
   begin 
      
      if STM_Pin.Set then 
         Read_Value := High;
      else 
         Read_Value := Low; 
      end if;
     
      Log(STM_GPIO_Log, "Digital Read from Pin=" & Pin'Image & " returning Value=" & Read_Value'Image);

      return Read_Value;
   end Digital_Read;   
end STM.GPIO;
