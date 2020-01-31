with Ada.Real_time; use Ada.Real_Time;
with Ada.Interrupts.Names;  use Ada.Interrupts;


package STM.MotionDetector is

   procedure Initialize_Hardware;
   procedure Motion_Detected;
   
   subtype Time_Milliseconds is Integer range 1..60000; 

   
   Default_Duration : constant Time_Milliseconds := 10000;
   
   
   ISR_1_High : Boolean := True;
   PG5_Interrupt : constant Interrupt_ID := Names.EXTI9_5_Interrupt;
   
   
   protected Detector is
      pragma Interrupt_Priority;
      
      procedure Clear_Trigger;
      entry Triggered_Entry;
      
   private 
      procedure Interrupt;
      pragma Attach_Handler(Interrupt, PG5_Interrupt);
      
      Triggered : Boolean := False;
      
   end Detector;
   
   
   
   
   
private 
   task Timer_Task with Priority => 5;
   task Motion_Detector_Trigger_Task with Priority => 5;
   
   protected MotionDetector_Control is
      

      procedure Stop(Expiration_Slot : Time);
      procedure Start(Duration : Time_Milliseconds);
                       
      entry Get_Termination_Time(Expire_At : out Time);  
      
   private 
      Detecting : Boolean := False;     
      Expire_At : Time := Ada.Real_Time.Time_Last;
   end MotionDetector_Control;

end STM.MotionDetector;
