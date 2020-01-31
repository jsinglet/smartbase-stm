with SB_HAL.GPIO; use SB_HAL.GPIO;
with STM32.GPIO;

package STM.GPIO is

   type STM_GPIO is new GPIO_Type with null record;

   overriding
   procedure Initialize_Hardware(This : STM_GPIO);
   
   overriding
   procedure Pin_Mode(This : STM_GPIO; Pin : Pin_Type; Mode: Mode_Type);
   
   overriding
   procedure Digital_Write(This : STM_GPIO; Pin : Pin_Type; Value : Value_Type);
   
   overriding
   function Digital_Read(This : STM_GPIO; Pin : Pin_Type;  Default_Value: in Value_Type := Floating) return Value_Type;

   overriding
   procedure Register_ISR_1(This : STM_GPIO; Pins : Pin_Array; Mode: Edge_Type; Callback : ISR_Callback_Function);             
   
   function To_STM_Pin(Pin : Pin_Type) return STM32.GPIO.GPIO_Point;
   
   Unknown_Pin_Configuration : exception;

private 
     ISR_1 : ISR_Callback_Function;
   
end STM.GPIO;
