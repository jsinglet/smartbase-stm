with Ada.Real_Time; use Ada.Real_Time;

with SB_HAL.LED; use SB_HAL.LED;

package STM.WS2812B is

   subtype Brightness_Type is Integer range 0..255;
   
   Pixel_Color : Color := (
                           R=> 0,
                           G=> 0,
                           B=> 0
                          ); 
   Scaled_Color : Color := (
                            R=> 0,
                            G=> 0,
                            B=> 0
                           );
   
   Brightness : Brightness_Type := 255;
   Num_Pixels : Integer;
   
   Timeout : Time := Ada.Real_Time.Clock;


   procedure Set_Pixel_Color(N: Integer; C : in Color);
   procedure Set_Brightness(B : Brightness_Type);     
   procedure Show;
   
private 
   EOL   : constant String := ASCII.LF & ASCII.HT;

   
end STM.WS2812B;
