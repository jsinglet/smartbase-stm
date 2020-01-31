with NRF52_SVD.UART; use NRF52_SVD.UART;
with NRF52_SVD.Device; use NRF52_SVD.Device;
with HAL;
package body NRF52.UART is


   function Get_Port_For_Pin(Pin : Pin_Type) return Bit is
   begin
      if Pin >= P1_Offset then 
         return 1;
      end if;
      
      return 0;
   end Get_Port_For_Pin;

   
   function Translate_Pin(Pin : Pin_Type) return UInt5 is
   begin
      if Pin >= P1_Offset then 
         return UInt5(Pin - P1_Offset);
      end if;
        
      return UInt5(Pin);
   end Translate_Pin;
   
   
   ---------------
   -- Configure --
   ---------------

   procedure Configure
     (This : in out UART_Device; Baud : Baud_Rate; Parity : Boolean)
   is
   begin
      This.Periph.BAUDRATE := Baud'Enum_Rep;
      This.Periph.CONFIG.PARITY := (if Parity then Included else Excluded);
   end Configure;

   ------------
   -- Enable --
   ------------

   procedure Enable (This : in out UART_Device;
                     Tx, Rx : Pin_Type)
   is
      Tx_Pin : UInt5 := Translate_Pin(Tx);
      Rx_Pin : UInt5 := Translate_Pin(Rx);
      Tx_Port : Bit  := Get_Port_For_Pin(Tx);
      Rx_Port : Bit  := Get_Port_For_Pin(Rx);
   begin
      This.Periph.PSEL.TXD.PIN := Tx_Pin;      
      This.Periph.PSEL.RXD.PIN := Rx_Pin;
      
      This.Periph.PSEL.TXD.PORT := Tx_Port;
      This.Periph.PSEL.RXD.PORT := Rx_Port;

      This.Periph.PSEL.TXD.CONNECT := Connected;
      This.Periph.PSEL.RXD.CONNECT := Connected;

      This.Periph.ENABLE.ENABLE := Enabled;
      
      --  Start TX and RX
      This.Periph.TASKS_STARTRX.TASKS_STARTRX := 1;
      This.Periph.TASKS_STARTTX.TASKS_STARTTX := 1;

      --  Send a first character to start the TXREADY events (See nRF51 Series
      --  Reference Manual Version 3.0 Figure 68: UART transmission).
      This.Periph.TXD.TXD := 0;
   end Enable;

   -------------
   -- Disable --
   -------------

   procedure Disable (This : in out UART_Device) is
   begin
      This.Periph.ENABLE.ENABLE := Disabled;
      This.Periph.PSEL.TXD.CONNECT := Disconnected;
      This.Periph.PSEL.RXD.CONNECT := Disconnected;
      
      --  Stop TX and RX
      This.Periph.TASKS_STOPTX.TASKS_STOPTX := 1;
      This.Periph.TASKS_STOPRX.TASKS_STOPRX := 1;

   end Disable;

   -------------------------
   -- Enable_Flow_Control --
   -------------------------

   procedure Enable_Flow_Control
     (This     : in out UART_Device;
      RTS, CTS : Pin_Type)
   is
      RTS_Pin : UInt5 := Translate_Pin(RTS);
      CTS_Pin : UInt5 := Translate_Pin(CTS);
      RTS_Port : Bit  := Get_Port_For_Pin(RTS);
      CTS_Port : Bit  := Get_Port_For_Pin(CTS);

   begin
      This.Periph.PSEL.RTS.PIN := RTS_Pin;
      This.Periph.PSEL.CTS.PIN := CTS_Pin;

      This.Periph.PSEL.RTS.PORT := RTS_Port;
      This.Periph.PSEL.CTS.PORT := CTS_Port;

      This.Periph.CONFIG.HWFC := Enabled;
   end Enable_Flow_Control;

   --------------------------
   -- Disable_Flow_Control --
   --------------------------

   procedure Disable_Flow_Control (This : in out UART_Device) is
   begin
      This.Periph.CONFIG.HWFC := Disabled;
      --This.Periph.PSELRTS := 16#FFFF_FFFF#;
      --This.Periph.PSELCTS := 16#FFFF_FFFF#;
   end Disable_Flow_Control;

   --------------
   -- Transmit --
   --------------

   overriding
   procedure Transmit
     (This    : in out UART_Device;
      Data    :        UART_Data_8b;
      Status  :    out UART_Status;
      Timeout :        Natural := 1_000)
   is
      pragma Unreferenced (Timeout);
   begin
      if Data'Length = 0 then
         Status := HAL.UART.Ok;
         return;
      end if;

      for C of Data loop
         --  Wait for TX Ready event
         while UART0_Periph.EVENTS_TXDRDY.EVENTS_TXDRDY = 0 loop
            null;
         end loop;

         --  Clear the event
         This.Periph.EVENTS_TXDRDY.EVENTS_TXDRDY := 0;

         --  Send a character
         This.Periph.TXD.TXD := Byte(C);
      end loop;

      Status := HAL.UART.Ok;
   end Transmit;

   -------------
   -- Receive --
   -------------

   overriding
   procedure Receive
     (This    : in out UART_Device;
      Data    :    out UART_Data_8b;
      Status  :    out UART_Status;
      Timeout :        Natural := 1_000)
   is
      pragma Unreferenced (Timeout);
   begin
      if Data'Length = 0 then
         Status := HAL.UART.Ok;
         return;
      end if;

      for C of Data loop
         --  Wait for RX Ready event
         while UART0_Periph.EVENTS_RXDRDY.EVENTS_RXDRDY = 0 loop
            null;
         end loop;

         --  Read a character
         C := HAL.UInt8(This.Periph.RXD.RXD);

         --  Clear the RX event for the character we just received
        UART0_Periph.EVENTS_RXDRDY.EVENTS_RXDRDY := 0;
      end loop;

      Status := HAL.UART.Ok;
   end Receive;

   --------------
   -- Transmit --
   --------------

   overriding
   procedure Transmit
     (This    : in out UART_Device;
      Data    :        UART_Data_9b;
      Status  : out    UART_Status;
      Timeout :        Natural := 1_000)
   is
   begin
      raise Program_Error;
   end Transmit;

   -------------
   -- Receive --
   -------------

   overriding
   procedure Receive
     (This    : in out UART_Device;
      Data    :    out UART_Data_9b;
      Status  :    out UART_Status;
      Timeout :        Natural := 1_000)
   is
   begin
      raise Program_Error;
   end Receive;

end NRF52.UART;
