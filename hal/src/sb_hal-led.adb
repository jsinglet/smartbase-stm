with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;
with Logger; use Logger;
package body SB_HAL.LED is

  function Compute_Steps(Num_Samples : Integer) return Brightness_Number is
   begin
      return (Max_Radians - Shifted_Zero)/Brightness_Number(Num_Samples);
   end Compute_Steps;        

   
   procedure Get_Fade_Up_Range(Steps : in out Brightness_Array; Max_Brightness : Integer; Num_Samples : Integer := Default_Num_Samples) is
      Step : constant Brightness_Number := Compute_Steps(Num_Samples);
      Max_Brightness_Value : constant Brightness_Number := Brightness_Number(Max_Brightness);
      Current_Step : Brightness_Number := Shifted_Zero; -- start at zero
   begin
      
      for I in Steps'Range loop
         
         declare
            Current_Brightness : Brightness_Number;            
         begin            
            Current_Brightness := Brightness_Number(Sin(Float(Current_Step))) * (Max_Brightness_Value/2) + (Max_Brightness_Value/2);
      
            Steps(I) := Brightness_Value(Brightness_Number'Round(Current_Brightness));

            Current_Step := Current_Step + Step;
            
            --Log(STM_LED_Log, "Step=" & I'Image & "Brightness=" & Steps(I)'Image);            
            
         end;
      end loop;

   end Get_Fade_Up_Range;

   
   function Get_Fade_Up_Range(Max_Brightness : Integer; Num_Samples : Integer := Default_Num_Samples) return Brightness_Array is
      Steps : Brightness_Array(1..Num_Samples);
   begin
      
      Get_Fade_Up_Range(Steps, Max_Brightness, Num_Samples);
      
      return Steps;   
   end Get_Fade_Up_Range;
   
   
   function Get_Fade_Down_Range(Max_Brightness : Integer; Num_Samples : Integer := Default_Num_Samples) return Brightness_Array is
      Steps : Brightness_Array(1..Num_Samples);
   begin
      
      Get_Fade_Down_Range(Steps, Max_Brightness, Num_Samples);     
      
      return Steps;   
   end Get_Fade_Down_Range;
   
   
   procedure Get_Fade_Down_Range(Steps : in out Brightness_Array; Max_Brightness : Integer; Num_Samples : Integer := Default_Num_Samples) is
      Step : constant Brightness_Number := Compute_Steps(Num_Samples);
      Max_Brightness_Value : constant Brightness_Number := Brightness_Number(Max_Brightness);
      Current_Step : Brightness_Number := Max_Radians; -- start at the maximum 
   begin
      
      for I in Steps'Range loop         
         declare
            Current_Brightness : Brightness_Number;            
         begin            
            Current_Brightness := Brightness_Number(Sin(Float(Current_Step))) * (Max_Brightness_Value/2) + (Max_Brightness_Value/2);
      
            Steps(I) := Brightness_Value(Brightness_Number'Round(Current_Brightness));

            Current_Step := Current_Step - Step;
         end;
         
         
      end loop;
      
   end Get_Fade_Down_Range;
   

end SB_HAL.LED;
