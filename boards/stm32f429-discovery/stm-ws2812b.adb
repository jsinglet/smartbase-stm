with Interfaces; use Interfaces;
with System.Machine_Code; use System, System.Machine_Code;


package body STM.WS2812B is
   
   procedure Set_Pixel_Color(N: Integer; C : in Color) is      
   begin
      Num_Pixels := N;
      
      -- set the base color
      Pixel_Color.R := C.R;
      Pixel_Color.G := C.G;
      Pixel_Color.B := C.B;
      
      
      -- scale the color, modulo the brightness
      Scaled_Color.R := Integer(Shift_Right(
                                Value  => Unsigned_32(Brightness * Pixel_Color.R),
                                Amount => 8
                               ));      

      Scaled_Color.G := Integer(Shift_Right(
                                Value  => Unsigned_32(Brightness * Pixel_Color.G),
                                Amount => 8
                               ));      
      
      Scaled_Color.B := Integer(Shift_Right(
                                Value  => Unsigned_32(Brightness * Pixel_Color.B),
                                Amount => 8
                               ));      
   end Set_Pixel_Color;
   
   procedure Set_Brightness(B : Brightness_Type) is
   begin
      -- rescale color according to the brightness
      Brightness := B;

      Scaled_Color.R := Integer(Shift_Right(
                                Value  => Unsigned_32(Brightness * Pixel_Color.R),
                                Amount => 8
                               ));      

      Scaled_Color.G := Integer(Shift_Right(
                                Value  => Unsigned_32(Brightness * Pixel_Color.G),
                                Amount => 8
                               ));      
      
      Scaled_Color.B := Integer(Shift_Right(
                                Value  => Unsigned_32(Brightness * Pixel_Color.B),
                                Amount => 8
                               ));      
   end Set_Brightness;
     
   procedure Show is
      Pixel : Unsigned_32 := 0;
   begin
      
      -- white is implicitly the first two pixels so we start with a shift
      -- and set G
      Pixel := Shift_Left(Value  => Pixel,
                          Amount => 8);
      
      
      Pixel := Pixel + Unsigned_32(Scaled_Color.G);
      
      -- Set R
      Pixel := Shift_Left(Value  => Pixel,
                          Amount => 8);
      
      Pixel := Pixel + Unsigned_32(Scaled_Color.R);

      
      -- Set B
      Pixel := Shift_Left(Value  => Pixel,
                          Amount => 8);
      
      Pixel := Pixel + Unsigned_32(Scaled_Color.B);

      
      -- don't do it before the latching period.
      while Ada.Real_Time.Clock < Timeout loop
         null;
      end loop;
            
      Asm("cpsid i",
          Volatile => True);         
      Asm(
          "init:" & EOL &
            "   mov  r3, %1              @ the number of pixels to do this for" & EOL &
            "   ldr  r1, %0       @ load bits to be loaded" & EOL &
            "   ldr  r5, =0x40021418     @ set r5 to the GPIOF register + 18 offset for BSRR" & EOL &
            "   ldr  r6, =0x2000         @ pin 13 HIGH mask" & EOL &
            "   ldr  r9, =0x20000000     @ pin 13 LOW mask" & EOL &
            "   mov  r8, #1              @ we use this to test bits" & EOL &
            "   " & EOL &
            "   " & EOL &
            "send_pixel:" & EOL &
            "   cmp  r3, #0        @ test if we are done" & EOL &
            "   beq  done          @ if we are out of pixels, finish up" & EOL &
            "   mov  r4, #23       @ we are going to send 24 bits, prime it here." & EOL &
            "   sub  r3, r3, #1    @ decrement this pixel" & EOL &
            "   " & EOL &
            "send_bit:" & EOL &
            "   lsl  r2, r8, r4    @ build the mask by shifting over the number of bits we have" & EOL &
            "   tst  r1, r2        @ check the mask against the bits we are loading." & EOL &
            "   bne  send_one      @ send a one" & EOL &
            "   b  send_zero     @ otherwise, send a zero" & EOL &
            "   " & EOL &
            "send_one:" & EOL &
            "   str  r6, [r5]            @ set pin 13 HIGH" & EOL &
            "   " & EOL &
            "   @  delay for ~ 800ns" & EOL &
            "   mov  r0, #44" & EOL &
            "delay_T1H:" & EOL &
            "   subs  r0, r0, #1" & EOL &
            "   bne  delay_T1H" & EOL &
            "   @  end delay" & EOL &
            "   " & EOL &
            "   str  r9, [r5]            @ set pin 13 LOW" & EOL &
            "   " & EOL &
            "   @  delay for ~ 450ns" & EOL &
            "   mov  r0, #23" & EOL &
            "delay_T1L:" & EOL &
            "   subs  r0, r0, #1" & EOL &
            "   bne  delay_T1L" & EOL &
            "   @  end delay" & EOL &
            "   " & EOL &
            "   b  bit_sent" & EOL &
            "send_zero:" & EOL &
            "   str  r6, [r5]            @ set pin 13 HIGH" & EOL &
            "   " & EOL &
            "   @  delay for ~ 400ns" & EOL &
            "   mov  r0, #21" & EOL &
            "delay_T0H:" & EOL &
            "   subs  r0, r0, #1" & EOL &
            "   bne  delay_T0H" & EOL &
            "   @  end delay" & EOL &
            "   " & EOL &
            "   str  r9, [r5]            @ set pin 13 LOW" & EOL &
            "   " & EOL &
            "   @  delay for ~ 850ns" & EOL &
            "   mov  r0, #49" & EOL &
            "delay_T0L:" & EOL &
            "   subs  r0, r0, #1" & EOL &
            "   bne  delay_T0L" & EOL &
            "   @  end delay" & EOL &
            "   " & EOL &
            "   b  bit_sent" & EOL &
            "   " & EOL &
            "bit_sent:" & EOL &
            "   cmp  r4, #0       @ was that the last bit?" & EOL &
            "   sub  r4, r4, #1   @ otherwise, decrement our counter" & EOL &
            "   beq  send_pixel   @ if so, go to the next pixel" & EOL &
            "   b  send_bit       @ and send the next bit" & EOL &
            "   " & EOL &
            "   " & EOL &
            "   " & EOL &
            "   " & EOL &
            "done:" & EOL,
             
          Volatile => True,
          Inputs => (
                     Unsigned_32'Asm_Input("g", Pixel), 
                     Unsigned_32'Asm_Input("g", Unsigned_32(Num_Pixels))
                    ),
          Clobber => "r0,r1,r2,r3,r4,r5,r6,r9,r8"); 
      
      
      Asm("cpsie i",
          Volatile => True);
      
      Timeout := Ada.Real_Time.Clock + Milliseconds(0) + Nanoseconds(50000*10); --Nanoseconds(50000);-- Nanoseconds(50000);
      
   end Show;


end STM.WS2812B;
