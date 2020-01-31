with Logger; use Logger;
with Device;
with SB_HAL.GPIO; use SB_HAL.GPIO;
with Util;
with LED; use LED;
with STM.GPIO;
with STM32.Device; 
with STM32.GPIO; 
with HAL.GPIO;
with STM32.EXTI;    use STM32.EXTI;
with System;

package body STM.MotionDetector is
   
   
   protected body Detector is 
      
      entry Triggered_Entry 
        when Triggered is
      begin         
         null;
      end Triggered_Entry;
      
      procedure Clear_Trigger is 
      begin
         Triggered := False;
      end Clear_Trigger;
      
      procedure Interrupt is
         Is_Set : Boolean := False;
      begin
         Clear_External_Interrupt(STM32.Device.PG5.Interrupt_Line_Number);
         Clear_External_Interrupt(STM32.Device.PG6.Interrupt_Line_Number);
         Clear_External_Interrupt(STM32.Device.PG7.Interrupt_Line_Number);
         
         Is_Set := STM32.Device.PG5.Set or STM32.Device.PG6.Set or STM32.Device.PG7.Set;
         
          if (ISR_1_High and then Is_Set)
                 or else (not ISR_1_High and then not Is_Set)
               then
                  if Triggered = False then 
                     Triggered := True;
                  end if;

               end if;
      end Interrupt;
      
--        procedure Interrupt is
--           Triggered : Boolean := False;
--        begin
--  
--           -- -Log(STM_GPIO_Log, "Calling Interrupt");
--              
--           for I in Device.Motion_Detector_Pins'Range loop
--              declare 
--                 STM_Pin : constant STM32.GPIO.GPIO_Point := STM.GPIO.To_STM_Pin(Device.Motion_Detector_Pins(I));
--              begin
--           
--  
--                 Clear_External_Interrupt(STM_Pin.Interrupt_Line_Number);
--              
--                 if (ISR_1_High and then STM_Pin.Set)
--                   or else (not ISR_1_High and then not STM_Pin.Set)
--                 then
--  
--                    --Log(STM_GPIO_Log, "Executing ISR_1");
--              
--                    if Triggered = False then 
--                       Motion_Detected;
--                       Triggered := True;
--                       --Log(STM_GPIO_Log, "Finished executing ISR_1");
--                    end if;
--  
--                 end if;
--              
--              end;
--           
--           end loop;
--      
--        end Interrupt;
      
      
      
   end Detector;
   
   
   procedure Initialize_Hardware is
   begin
      Device.GPIO.Register_ISR_1(Pins     => Device.Motion_Detector_Pins,
                                 Mode     => RISING,
                                 Callback => Motion_Detected'Access);
            
      ISR_1_High := True;
   end Initialize_Hardware;
   
   procedure Motion_Detected is 
   begin
      Log(MotionDetector_Log, "Detected Motion...");
      MotionDetector_Control.Start(Duration => Default_Duration);    
      Detector.Clear_Trigger;
   end Motion_Detected;
   
   
   protected body MotionDetector_Control is
      
      procedure Stop(Expiration_Slot : Time) is
      begin
         Log(MotionDetector_Log, "[Control] Motion detector timeout");
         
         if Expire_At = Expiration_Slot then
            LED_Status_Manager.Set_Status(FADE_OFF);
            Detecting := False;
         end if;
         
      end Stop;
        
      
      procedure Start(Duration : Time_Milliseconds) is
         Current_Time : Time := Ada.Real_Time.Clock;
      begin              
         Log(MotionDetector_Log, "[Control] Triggering Motion detection.");

         Expire_At := Current_Time + Milliseconds(Duration);

         LED_Status_Manager.Set_Status(FADE_ON);
         
         Detecting := True;
      end Start;                 
      
      entry Get_Termination_Time(Expire_At : out Time) 
        when Detecting is
      begin         
         Expire_At := MotionDetector_Control.Expire_At;         
      end Get_Termination_Time;
      
   end MotionDetector_Control;
   
   task body Timer_Task is 
      Expire_At : Time;
   begin      
      loop 
         MotionDetector_Control.Get_Termination_Time(Expire_At);
         declare             
            Current_Time : Time := Ada.Real_Time.Clock;
         begin
            
            if Current_Time >= Expire_At then
               Log(MotionDetector_Log, "Resolving Timer.");

               MotionDetector_Control.Stop(Expire_At); 
            else
               delay until Util.Next_N_Ms(100);               
            end if;
         end;
      end loop;
   end Timer_Task;       
   
   
   task body Motion_Detector_Trigger_Task is 
   begin
      loop
         Detector.Triggered_Entry; -- if this happens, we have a valid trigger 
         
         Log(MotionDetector_Log, "Detected Motion...");
         MotionDetector_Control.Start(Duration => Default_Duration);    
         Detector.Clear_Trigger;
         
      end loop;
   end Motion_Detector_Trigger_Task;
   
         
   
end STM.MotionDetector;
