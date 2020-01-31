with Device; use Device;
with HAL.GPIO; use HAL.GPIO;
with Util;
with NRF52.UART;

package body Argon.ESP32 is

   procedure Initialize_Hardware is 
   begin
      Device.GPIO.Pin_Mode(Pin  => BOOT_MODE,
                           Mode => Output);
      
      Device.GPIO.Pin_Mode(Pin  => WIFI_EN,
                           Mode => Output);
      
      Reset;
      
      -- get it ready to send UART commands
      
    end Initialize_Hardware;
   
   procedure Off is 
   begin
      Device.GPIO.Digital_Write(Pin   => WIFI_EN,
                                Value => Low);
   end Off;
   
   
   procedure Reset is
   begin
      Device.GPIO.Digital_Write(Pin   => BOOT_MODE,
                                Value => High);
    
      delay until Util.Next_N_Ms(100);
      
      Device.GPIO.Digital_Write(Pin   => WIFI_EN,
                                Value => Low);
      
      delay until Util.Next_N_Ms(100);
      
      Device.GPIO.Digital_Write(Pin   => WIFI_EN,
                                Value => High);
      
      delay until Util.Next_N_Ms(100);
            
   end Reset;
   
   
   function Get_Firmware_Version_String return String is
   begin
      
     return "";
      
      
   end Get_Firmware_Version_String;
   
   

end Argon.ESP32;
