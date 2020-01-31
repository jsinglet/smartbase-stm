package SB_HAL.Display is

   type Display_Type is interface;
   
   procedure Write_To_Screen(This : Display_Type; Buffer : in String) is abstract;

end SB_HAL.Display;
