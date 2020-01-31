--  Copyright (c) 2010 - 2018, Nordic Semiconductor ASA
--
--  All rights reserved.
--
--  Redistribution and use in source and binary forms, with or without
--  modification, are permitted provided that the following conditions are met:
--
--  1. Redistributions of source code must retain the above copyright notice,
--  this list of conditions and the following disclaimer.
--
--  2. Redistributions in binary form, except as embedded into a Nordic
--  Semiconductor ASA integrated circuit in a product or a software update
--  for such product, must reproduce the above copyright notice, this list
--  of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--
--  3. Neither the name of Nordic Semiconductor ASA nor the names of its
--  contributors may be used to endorse or promote products derived from
--  this software without specific prior written permission.
--
--  4. This software, with or without modification, must only be used with a
--  Nordic Semiconductor ASA integrated circuit.
--
--  5. Any software provided in binary form under this license must not be
--  reverse engineered, decompiled, modified and/or disassembled.
--
--  THIS SOFTWARE IS PROVIDED BY NORDIC SEMICONDUCTOR ASA "AS IS" AND ANY
--  EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
--  WARRANTIES OF MERCHANTABILITY, NONINFRINGEMENT, AND FITNESS FOR A
--  PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL NORDIC SEMICONDUCTOR
--  ASA OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
--  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
--  TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
--  PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
--  LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
--  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
--  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--

--  This spec has been automatically generated from nrf52840.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

package nrf52_svd.USBD is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype TASKS_STARTEPIN_TASKS_STARTEPIN_Field is nrf52_svd.Bit;

   --  Description collection[n]: Captures the EPIN[n].PTR and EPIN[n].MAXCNT
   --  registers values, and enables endpoint IN n to respond to traffic from
   --  host
   type TASKS_STARTEPIN_Register is record
      --  Write-only.
      TASKS_STARTEPIN : TASKS_STARTEPIN_TASKS_STARTEPIN_Field := 16#0#;
      --  unspecified
      Reserved_1_31   : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_STARTEPIN_Register use record
      TASKS_STARTEPIN at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   --  Description collection[n]: Captures the EPIN[n].PTR and EPIN[n].MAXCNT
   --  registers values, and enables endpoint IN n to respond to traffic from
   --  host
   type TASKS_STARTEPIN_Registers is array (0 .. 7)
     of TASKS_STARTEPIN_Register;

   subtype TASKS_STARTISOIN_TASKS_STARTISOIN_Field is nrf52_svd.Bit;

   --  Captures the ISOIN.PTR and ISOIN.MAXCNT registers values, and enables
   --  sending data on ISO endpoint
   type TASKS_STARTISOIN_Register is record
      --  Write-only.
      TASKS_STARTISOIN : TASKS_STARTISOIN_TASKS_STARTISOIN_Field := 16#0#;
      --  unspecified
      Reserved_1_31    : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_STARTISOIN_Register use record
      TASKS_STARTISOIN at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   subtype TASKS_STARTEPOUT_TASKS_STARTEPOUT_Field is nrf52_svd.Bit;

   --  Description collection[n]: Captures the EPOUT[n].PTR and EPOUT[n].MAXCNT
   --  registers values, and enables endpoint n to respond to traffic from host
   type TASKS_STARTEPOUT_Register is record
      --  Write-only.
      TASKS_STARTEPOUT : TASKS_STARTEPOUT_TASKS_STARTEPOUT_Field := 16#0#;
      --  unspecified
      Reserved_1_31    : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_STARTEPOUT_Register use record
      TASKS_STARTEPOUT at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   --  Description collection[n]: Captures the EPOUT[n].PTR and EPOUT[n].MAXCNT
   --  registers values, and enables endpoint n to respond to traffic from host
   type TASKS_STARTEPOUT_Registers is array (0 .. 7)
     of TASKS_STARTEPOUT_Register;

   subtype TASKS_STARTISOOUT_TASKS_STARTISOOUT_Field is nrf52_svd.Bit;

   --  Captures the ISOOUT.PTR and ISOOUT.MAXCNT registers values, and enables
   --  receiving of data on ISO endpoint
   type TASKS_STARTISOOUT_Register is record
      --  Write-only.
      TASKS_STARTISOOUT : TASKS_STARTISOOUT_TASKS_STARTISOOUT_Field := 16#0#;
      --  unspecified
      Reserved_1_31     : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_STARTISOOUT_Register use record
      TASKS_STARTISOOUT at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   subtype TASKS_EP0RCVOUT_TASKS_EP0RCVOUT_Field is nrf52_svd.Bit;

   --  Allows OUT data stage on control endpoint 0
   type TASKS_EP0RCVOUT_Register is record
      --  Write-only.
      TASKS_EP0RCVOUT : TASKS_EP0RCVOUT_TASKS_EP0RCVOUT_Field := 16#0#;
      --  unspecified
      Reserved_1_31   : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_EP0RCVOUT_Register use record
      TASKS_EP0RCVOUT at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   subtype TASKS_EP0STATUS_TASKS_EP0STATUS_Field is nrf52_svd.Bit;

   --  Allows status stage on control endpoint 0
   type TASKS_EP0STATUS_Register is record
      --  Write-only.
      TASKS_EP0STATUS : TASKS_EP0STATUS_TASKS_EP0STATUS_Field := 16#0#;
      --  unspecified
      Reserved_1_31   : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_EP0STATUS_Register use record
      TASKS_EP0STATUS at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   subtype TASKS_EP0STALL_TASKS_EP0STALL_Field is nrf52_svd.Bit;

   --  Stalls data and status stage on control endpoint 0
   type TASKS_EP0STALL_Register is record
      --  Write-only.
      TASKS_EP0STALL : TASKS_EP0STALL_TASKS_EP0STALL_Field := 16#0#;
      --  unspecified
      Reserved_1_31  : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_EP0STALL_Register use record
      TASKS_EP0STALL at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   subtype TASKS_DPDMDRIVE_TASKS_DPDMDRIVE_Field is nrf52_svd.Bit;

   --  Forces D+ and D- lines into the state defined in the DPDMVALUE register
   type TASKS_DPDMDRIVE_Register is record
      --  Write-only.
      TASKS_DPDMDRIVE : TASKS_DPDMDRIVE_TASKS_DPDMDRIVE_Field := 16#0#;
      --  unspecified
      Reserved_1_31   : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_DPDMDRIVE_Register use record
      TASKS_DPDMDRIVE at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   subtype TASKS_DPDMNODRIVE_TASKS_DPDMNODRIVE_Field is nrf52_svd.Bit;

   --  Stops forcing D+ and D- lines into any state (USB engine takes control)
   type TASKS_DPDMNODRIVE_Register is record
      --  Write-only.
      TASKS_DPDMNODRIVE : TASKS_DPDMNODRIVE_TASKS_DPDMNODRIVE_Field := 16#0#;
      --  unspecified
      Reserved_1_31     : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_DPDMNODRIVE_Register use record
      TASKS_DPDMNODRIVE at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   subtype EVENTS_USBRESET_EVENTS_USBRESET_Field is nrf52_svd.Bit;

   --  Signals that a USB reset condition has been detected on USB lines
   type EVENTS_USBRESET_Register is record
      EVENTS_USBRESET : EVENTS_USBRESET_EVENTS_USBRESET_Field := 16#0#;
      --  unspecified
      Reserved_1_31   : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_USBRESET_Register use record
      EVENTS_USBRESET at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   subtype EVENTS_STARTED_EVENTS_STARTED_Field is nrf52_svd.Bit;

   --  Confirms that the EPIN[n].PTR and EPIN[n].MAXCNT, or EPOUT[n].PTR and
   --  EPOUT[n].MAXCNT registers have been captured on all endpoints reported
   --  in the EPSTATUS register
   type EVENTS_STARTED_Register is record
      EVENTS_STARTED : EVENTS_STARTED_EVENTS_STARTED_Field := 16#0#;
      --  unspecified
      Reserved_1_31  : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_STARTED_Register use record
      EVENTS_STARTED at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   subtype EVENTS_ENDEPIN_EVENTS_ENDEPIN_Field is nrf52_svd.Bit;

   --  Description collection[n]: The whole EPIN[n] buffer has been consumed.
   --  The RAM buffer can be accessed safely by software.
   type EVENTS_ENDEPIN_Register is record
      EVENTS_ENDEPIN : EVENTS_ENDEPIN_EVENTS_ENDEPIN_Field := 16#0#;
      --  unspecified
      Reserved_1_31  : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_ENDEPIN_Register use record
      EVENTS_ENDEPIN at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Description collection[n]: The whole EPIN[n] buffer has been consumed.
   --  The RAM buffer can be accessed safely by software.
   type EVENTS_ENDEPIN_Registers is array (0 .. 7) of EVENTS_ENDEPIN_Register;

   subtype EVENTS_EP0DATADONE_EVENTS_EP0DATADONE_Field is nrf52_svd.Bit;

   --  An acknowledged data transfer has taken place on the control endpoint
   type EVENTS_EP0DATADONE_Register is record
      EVENTS_EP0DATADONE : EVENTS_EP0DATADONE_EVENTS_EP0DATADONE_Field :=
                            16#0#;
      --  unspecified
      Reserved_1_31      : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_EP0DATADONE_Register use record
      EVENTS_EP0DATADONE at 0 range 0 .. 0;
      Reserved_1_31      at 0 range 1 .. 31;
   end record;

   subtype EVENTS_ENDISOIN_EVENTS_ENDISOIN_Field is nrf52_svd.Bit;

   --  The whole ISOIN buffer has been consumed. The RAM buffer can be accessed
   --  safely by software.
   type EVENTS_ENDISOIN_Register is record
      EVENTS_ENDISOIN : EVENTS_ENDISOIN_EVENTS_ENDISOIN_Field := 16#0#;
      --  unspecified
      Reserved_1_31   : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_ENDISOIN_Register use record
      EVENTS_ENDISOIN at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   subtype EVENTS_ENDEPOUT_EVENTS_ENDEPOUT_Field is nrf52_svd.Bit;

   --  Description collection[n]: The whole EPOUT[n] buffer has been consumed.
   --  The RAM buffer can be accessed safely by software.
   type EVENTS_ENDEPOUT_Register is record
      EVENTS_ENDEPOUT : EVENTS_ENDEPOUT_EVENTS_ENDEPOUT_Field := 16#0#;
      --  unspecified
      Reserved_1_31   : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_ENDEPOUT_Register use record
      EVENTS_ENDEPOUT at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   --  Description collection[n]: The whole EPOUT[n] buffer has been consumed.
   --  The RAM buffer can be accessed safely by software.
   type EVENTS_ENDEPOUT_Registers is array (0 .. 7)
     of EVENTS_ENDEPOUT_Register;

   subtype EVENTS_ENDISOOUT_EVENTS_ENDISOOUT_Field is nrf52_svd.Bit;

   --  The whole ISOOUT buffer has been consumed. The RAM buffer can be
   --  accessed safely by software.
   type EVENTS_ENDISOOUT_Register is record
      EVENTS_ENDISOOUT : EVENTS_ENDISOOUT_EVENTS_ENDISOOUT_Field := 16#0#;
      --  unspecified
      Reserved_1_31    : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_ENDISOOUT_Register use record
      EVENTS_ENDISOOUT at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   subtype EVENTS_SOF_EVENTS_SOF_Field is nrf52_svd.Bit;

   --  Signals that a SOF (start of frame) condition has been detected on USB
   --  lines
   type EVENTS_SOF_Register is record
      EVENTS_SOF    : EVENTS_SOF_EVENTS_SOF_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_SOF_Register use record
      EVENTS_SOF    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype EVENTS_USBEVENT_EVENTS_USBEVENT_Field is nrf52_svd.Bit;

   --  An event or an error not covered by specific events has occurred. Check
   --  EVENTCAUSE register to find the cause.
   type EVENTS_USBEVENT_Register is record
      EVENTS_USBEVENT : EVENTS_USBEVENT_EVENTS_USBEVENT_Field := 16#0#;
      --  unspecified
      Reserved_1_31   : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_USBEVENT_Register use record
      EVENTS_USBEVENT at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   subtype EVENTS_EP0SETUP_EVENTS_EP0SETUP_Field is nrf52_svd.Bit;

   --  A valid SETUP token has been received (and acknowledged) on the control
   --  endpoint
   type EVENTS_EP0SETUP_Register is record
      EVENTS_EP0SETUP : EVENTS_EP0SETUP_EVENTS_EP0SETUP_Field := 16#0#;
      --  unspecified
      Reserved_1_31   : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_EP0SETUP_Register use record
      EVENTS_EP0SETUP at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   subtype EVENTS_EPDATA_EVENTS_EPDATA_Field is nrf52_svd.Bit;

   --  A data transfer has occurred on a data endpoint, indicated by the
   --  EPDATASTATUS register
   type EVENTS_EPDATA_Register is record
      EVENTS_EPDATA : EVENTS_EPDATA_EVENTS_EPDATA_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_EPDATA_Register use record
      EVENTS_EPDATA at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Shortcut between EP0DATADONE event and STARTEPIN[0] task
   type SHORTS_EP0DATADONE_STARTEPIN0_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_EP0DATADONE_STARTEPIN0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between EP0DATADONE event and STARTEPOUT[0] task
   type SHORTS_EP0DATADONE_STARTEPOUT0_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_EP0DATADONE_STARTEPOUT0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between EP0DATADONE event and EP0STATUS task
   type SHORTS_EP0DATADONE_EP0STATUS_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_EP0DATADONE_EP0STATUS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between ENDEPOUT[0] event and EP0STATUS task
   type SHORTS_ENDEPOUT0_EP0STATUS_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_ENDEPOUT0_EP0STATUS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between ENDEPOUT[0] event and EP0RCVOUT task
   type SHORTS_ENDEPOUT0_EP0RCVOUT_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_ENDEPOUT0_EP0RCVOUT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut register
   type SHORTS_Register is record
      --  Shortcut between EP0DATADONE event and STARTEPIN[0] task
      EP0DATADONE_STARTEPIN0  : SHORTS_EP0DATADONE_STARTEPIN0_Field :=
                                 nrf52_svd.USBD.Disabled;
      --  Shortcut between EP0DATADONE event and STARTEPOUT[0] task
      EP0DATADONE_STARTEPOUT0 : SHORTS_EP0DATADONE_STARTEPOUT0_Field :=
                                 nrf52_svd.USBD.Disabled;
      --  Shortcut between EP0DATADONE event and EP0STATUS task
      EP0DATADONE_EP0STATUS   : SHORTS_EP0DATADONE_EP0STATUS_Field :=
                                 nrf52_svd.USBD.Disabled;
      --  Shortcut between ENDEPOUT[0] event and EP0STATUS task
      ENDEPOUT0_EP0STATUS     : SHORTS_ENDEPOUT0_EP0STATUS_Field :=
                                 nrf52_svd.USBD.Disabled;
      --  Shortcut between ENDEPOUT[0] event and EP0RCVOUT task
      ENDEPOUT0_EP0RCVOUT     : SHORTS_ENDEPOUT0_EP0RCVOUT_Field :=
                                 nrf52_svd.USBD.Disabled;
      --  unspecified
      Reserved_5_31           : nrf52_svd.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHORTS_Register use record
      EP0DATADONE_STARTEPIN0  at 0 range 0 .. 0;
      EP0DATADONE_STARTEPOUT0 at 0 range 1 .. 1;
      EP0DATADONE_EP0STATUS   at 0 range 2 .. 2;
      ENDEPOUT0_EP0STATUS     at 0 range 3 .. 3;
      ENDEPOUT0_EP0RCVOUT     at 0 range 4 .. 4;
      Reserved_5_31           at 0 range 5 .. 31;
   end record;

   --  Enable or disable interrupt for USBRESET event
   type INTEN_USBRESET_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_USBRESET_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for STARTED event
   type INTEN_STARTED_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_STARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for ENDEPIN[0] event
   type INTEN_ENDEPIN0_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_ENDEPIN0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  INTEN_ENDEPIN array
   type INTEN_ENDEPIN_Field_Array is array (0 .. 7) of INTEN_ENDEPIN0_Field
     with Component_Size => 1, Size => 8;

   --  Type definition for INTEN_ENDEPIN
   type INTEN_ENDEPIN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENDEPIN as a value
            Val : nrf52_svd.Byte;
         when True =>
            --  ENDEPIN as an array
            Arr : INTEN_ENDEPIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for INTEN_ENDEPIN_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Enable or disable interrupt for EP0DATADONE event
   type INTEN_EP0DATADONE_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_EP0DATADONE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for ENDISOIN event
   type INTEN_ENDISOIN_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_ENDISOIN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for ENDEPOUT[0] event
   type INTEN_ENDEPOUT0_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_ENDEPOUT0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  INTEN_ENDEPOUT array
   type INTEN_ENDEPOUT_Field_Array is array (0 .. 7) of INTEN_ENDEPOUT0_Field
     with Component_Size => 1, Size => 8;

   --  Type definition for INTEN_ENDEPOUT
   type INTEN_ENDEPOUT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENDEPOUT as a value
            Val : nrf52_svd.Byte;
         when True =>
            --  ENDEPOUT as an array
            Arr : INTEN_ENDEPOUT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for INTEN_ENDEPOUT_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Enable or disable interrupt for ENDISOOUT event
   type INTEN_ENDISOOUT_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_ENDISOOUT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for SOF event
   type INTEN_SOF_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_SOF_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for USBEVENT event
   type INTEN_USBEVENT_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_USBEVENT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for EP0SETUP event
   type INTEN_EP0SETUP_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_EP0SETUP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for EPDATA event
   type INTEN_EPDATA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_EPDATA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt
   type INTEN_Register is record
      --  Enable or disable interrupt for USBRESET event
      USBRESET       : INTEN_USBRESET_Field := nrf52_svd.USBD.Disabled;
      --  Enable or disable interrupt for STARTED event
      STARTED        : INTEN_STARTED_Field := nrf52_svd.USBD.Disabled;
      --  Enable or disable interrupt for ENDEPIN[0] event
      ENDEPIN        : INTEN_ENDEPIN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Enable or disable interrupt for EP0DATADONE event
      EP0DATADONE    : INTEN_EP0DATADONE_Field := nrf52_svd.USBD.Disabled;
      --  Enable or disable interrupt for ENDISOIN event
      ENDISOIN       : INTEN_ENDISOIN_Field := nrf52_svd.USBD.Disabled;
      --  Enable or disable interrupt for ENDEPOUT[0] event
      ENDEPOUT       : INTEN_ENDEPOUT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Enable or disable interrupt for ENDISOOUT event
      ENDISOOUT      : INTEN_ENDISOOUT_Field := nrf52_svd.USBD.Disabled;
      --  Enable or disable interrupt for SOF event
      SOF            : INTEN_SOF_Field := nrf52_svd.USBD.Disabled;
      --  Enable or disable interrupt for USBEVENT event
      USBEVENT       : INTEN_USBEVENT_Field := nrf52_svd.USBD.Disabled;
      --  Enable or disable interrupt for EP0SETUP event
      EP0SETUP       : INTEN_EP0SETUP_Field := nrf52_svd.USBD.Disabled;
      --  Enable or disable interrupt for EPDATA event
      EPDATA         : INTEN_EPDATA_Field := nrf52_svd.USBD.Disabled;
      --  unspecified
      Reserved_25_31 : nrf52_svd.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      USBRESET       at 0 range 0 .. 0;
      STARTED        at 0 range 1 .. 1;
      ENDEPIN        at 0 range 2 .. 9;
      EP0DATADONE    at 0 range 10 .. 10;
      ENDISOIN       at 0 range 11 .. 11;
      ENDEPOUT       at 0 range 12 .. 19;
      ENDISOOUT      at 0 range 20 .. 20;
      SOF            at 0 range 21 .. 21;
      USBEVENT       at 0 range 22 .. 22;
      EP0SETUP       at 0 range 23 .. 23;
      EPDATA         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Write '1' to enable interrupt for USBRESET event
   type INTENSET_USBRESET_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_USBRESET_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for USBRESET event
   type INTENSET_USBRESET_Field_1 is
     (--  Reset value for the field
      Intenset_Usbreset_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_USBRESET_Field_1 use
     (Intenset_Usbreset_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for STARTED event
   type INTENSET_STARTED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_STARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for STARTED event
   type INTENSET_STARTED_Field_1 is
     (--  Reset value for the field
      Intenset_Started_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_STARTED_Field_1 use
     (Intenset_Started_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for ENDEPIN[0] event
   type INTENSET_ENDEPIN0_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_ENDEPIN0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for ENDEPIN[0] event
   type INTENSET_ENDEPIN0_Field_1 is
     (--  Reset value for the field
      Intenset_Endepin0_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_ENDEPIN0_Field_1 use
     (Intenset_Endepin0_Field_Reset => 0,
      Set => 1);

   --  INTENSET_ENDEPIN array
   type INTENSET_ENDEPIN_Field_Array is array (0 .. 7)
     of INTENSET_ENDEPIN0_Field_1
     with Component_Size => 1, Size => 8;

   --  Type definition for INTENSET_ENDEPIN
   type INTENSET_ENDEPIN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENDEPIN as a value
            Val : nrf52_svd.Byte;
         when True =>
            --  ENDEPIN as an array
            Arr : INTENSET_ENDEPIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for INTENSET_ENDEPIN_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Write '1' to enable interrupt for EP0DATADONE event
   type INTENSET_EP0DATADONE_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_EP0DATADONE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for EP0DATADONE event
   type INTENSET_EP0DATADONE_Field_1 is
     (--  Reset value for the field
      Intenset_Ep0Datadone_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_EP0DATADONE_Field_1 use
     (Intenset_Ep0Datadone_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for ENDISOIN event
   type INTENSET_ENDISOIN_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_ENDISOIN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for ENDISOIN event
   type INTENSET_ENDISOIN_Field_1 is
     (--  Reset value for the field
      Intenset_Endisoin_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_ENDISOIN_Field_1 use
     (Intenset_Endisoin_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for ENDEPOUT[0] event
   type INTENSET_ENDEPOUT0_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_ENDEPOUT0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for ENDEPOUT[0] event
   type INTENSET_ENDEPOUT0_Field_1 is
     (--  Reset value for the field
      Intenset_Endepout0_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_ENDEPOUT0_Field_1 use
     (Intenset_Endepout0_Field_Reset => 0,
      Set => 1);

   --  INTENSET_ENDEPOUT array
   type INTENSET_ENDEPOUT_Field_Array is array (0 .. 7)
     of INTENSET_ENDEPOUT0_Field_1
     with Component_Size => 1, Size => 8;

   --  Type definition for INTENSET_ENDEPOUT
   type INTENSET_ENDEPOUT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENDEPOUT as a value
            Val : nrf52_svd.Byte;
         when True =>
            --  ENDEPOUT as an array
            Arr : INTENSET_ENDEPOUT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for INTENSET_ENDEPOUT_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Write '1' to enable interrupt for ENDISOOUT event
   type INTENSET_ENDISOOUT_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_ENDISOOUT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for ENDISOOUT event
   type INTENSET_ENDISOOUT_Field_1 is
     (--  Reset value for the field
      Intenset_Endisoout_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_ENDISOOUT_Field_1 use
     (Intenset_Endisoout_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for SOF event
   type INTENSET_SOF_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_SOF_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for SOF event
   type INTENSET_SOF_Field_1 is
     (--  Reset value for the field
      Intenset_Sof_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_SOF_Field_1 use
     (Intenset_Sof_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for USBEVENT event
   type INTENSET_USBEVENT_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_USBEVENT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for USBEVENT event
   type INTENSET_USBEVENT_Field_1 is
     (--  Reset value for the field
      Intenset_Usbevent_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_USBEVENT_Field_1 use
     (Intenset_Usbevent_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for EP0SETUP event
   type INTENSET_EP0SETUP_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_EP0SETUP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for EP0SETUP event
   type INTENSET_EP0SETUP_Field_1 is
     (--  Reset value for the field
      Intenset_Ep0Setup_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_EP0SETUP_Field_1 use
     (Intenset_Ep0Setup_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for EPDATA event
   type INTENSET_EPDATA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_EPDATA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for EPDATA event
   type INTENSET_EPDATA_Field_1 is
     (--  Reset value for the field
      Intenset_Epdata_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_EPDATA_Field_1 use
     (Intenset_Epdata_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  Write '1' to enable interrupt for USBRESET event
      USBRESET       : INTENSET_USBRESET_Field_1 :=
                        Intenset_Usbreset_Field_Reset;
      --  Write '1' to enable interrupt for STARTED event
      STARTED        : INTENSET_STARTED_Field_1 :=
                        Intenset_Started_Field_Reset;
      --  Write '1' to enable interrupt for ENDEPIN[0] event
      ENDEPIN        : INTENSET_ENDEPIN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write '1' to enable interrupt for EP0DATADONE event
      EP0DATADONE    : INTENSET_EP0DATADONE_Field_1 :=
                        Intenset_Ep0Datadone_Field_Reset;
      --  Write '1' to enable interrupt for ENDISOIN event
      ENDISOIN       : INTENSET_ENDISOIN_Field_1 :=
                        Intenset_Endisoin_Field_Reset;
      --  Write '1' to enable interrupt for ENDEPOUT[0] event
      ENDEPOUT       : INTENSET_ENDEPOUT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write '1' to enable interrupt for ENDISOOUT event
      ENDISOOUT      : INTENSET_ENDISOOUT_Field_1 :=
                        Intenset_Endisoout_Field_Reset;
      --  Write '1' to enable interrupt for SOF event
      SOF            : INTENSET_SOF_Field_1 := Intenset_Sof_Field_Reset;
      --  Write '1' to enable interrupt for USBEVENT event
      USBEVENT       : INTENSET_USBEVENT_Field_1 :=
                        Intenset_Usbevent_Field_Reset;
      --  Write '1' to enable interrupt for EP0SETUP event
      EP0SETUP       : INTENSET_EP0SETUP_Field_1 :=
                        Intenset_Ep0Setup_Field_Reset;
      --  Write '1' to enable interrupt for EPDATA event
      EPDATA         : INTENSET_EPDATA_Field_1 := Intenset_Epdata_Field_Reset;
      --  unspecified
      Reserved_25_31 : nrf52_svd.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      USBRESET       at 0 range 0 .. 0;
      STARTED        at 0 range 1 .. 1;
      ENDEPIN        at 0 range 2 .. 9;
      EP0DATADONE    at 0 range 10 .. 10;
      ENDISOIN       at 0 range 11 .. 11;
      ENDEPOUT       at 0 range 12 .. 19;
      ENDISOOUT      at 0 range 20 .. 20;
      SOF            at 0 range 21 .. 21;
      USBEVENT       at 0 range 22 .. 22;
      EP0SETUP       at 0 range 23 .. 23;
      EPDATA         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Write '1' to disable interrupt for USBRESET event
   type INTENCLR_USBRESET_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_USBRESET_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for USBRESET event
   type INTENCLR_USBRESET_Field_1 is
     (--  Reset value for the field
      Intenclr_Usbreset_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_USBRESET_Field_1 use
     (Intenclr_Usbreset_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for STARTED event
   type INTENCLR_STARTED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_STARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for STARTED event
   type INTENCLR_STARTED_Field_1 is
     (--  Reset value for the field
      Intenclr_Started_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_STARTED_Field_1 use
     (Intenclr_Started_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for ENDEPIN[0] event
   type INTENCLR_ENDEPIN0_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_ENDEPIN0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for ENDEPIN[0] event
   type INTENCLR_ENDEPIN0_Field_1 is
     (--  Reset value for the field
      Intenclr_Endepin0_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_ENDEPIN0_Field_1 use
     (Intenclr_Endepin0_Field_Reset => 0,
      Clear => 1);

   --  INTENCLR_ENDEPIN array
   type INTENCLR_ENDEPIN_Field_Array is array (0 .. 7)
     of INTENCLR_ENDEPIN0_Field_1
     with Component_Size => 1, Size => 8;

   --  Type definition for INTENCLR_ENDEPIN
   type INTENCLR_ENDEPIN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENDEPIN as a value
            Val : nrf52_svd.Byte;
         when True =>
            --  ENDEPIN as an array
            Arr : INTENCLR_ENDEPIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for INTENCLR_ENDEPIN_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Write '1' to disable interrupt for EP0DATADONE event
   type INTENCLR_EP0DATADONE_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_EP0DATADONE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for EP0DATADONE event
   type INTENCLR_EP0DATADONE_Field_1 is
     (--  Reset value for the field
      Intenclr_Ep0Datadone_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_EP0DATADONE_Field_1 use
     (Intenclr_Ep0Datadone_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for ENDISOIN event
   type INTENCLR_ENDISOIN_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_ENDISOIN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for ENDISOIN event
   type INTENCLR_ENDISOIN_Field_1 is
     (--  Reset value for the field
      Intenclr_Endisoin_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_ENDISOIN_Field_1 use
     (Intenclr_Endisoin_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for ENDEPOUT[0] event
   type INTENCLR_ENDEPOUT0_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_ENDEPOUT0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for ENDEPOUT[0] event
   type INTENCLR_ENDEPOUT0_Field_1 is
     (--  Reset value for the field
      Intenclr_Endepout0_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_ENDEPOUT0_Field_1 use
     (Intenclr_Endepout0_Field_Reset => 0,
      Clear => 1);

   --  INTENCLR_ENDEPOUT array
   type INTENCLR_ENDEPOUT_Field_Array is array (0 .. 7)
     of INTENCLR_ENDEPOUT0_Field_1
     with Component_Size => 1, Size => 8;

   --  Type definition for INTENCLR_ENDEPOUT
   type INTENCLR_ENDEPOUT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENDEPOUT as a value
            Val : nrf52_svd.Byte;
         when True =>
            --  ENDEPOUT as an array
            Arr : INTENCLR_ENDEPOUT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for INTENCLR_ENDEPOUT_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Write '1' to disable interrupt for ENDISOOUT event
   type INTENCLR_ENDISOOUT_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_ENDISOOUT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for ENDISOOUT event
   type INTENCLR_ENDISOOUT_Field_1 is
     (--  Reset value for the field
      Intenclr_Endisoout_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_ENDISOOUT_Field_1 use
     (Intenclr_Endisoout_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for SOF event
   type INTENCLR_SOF_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_SOF_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for SOF event
   type INTENCLR_SOF_Field_1 is
     (--  Reset value for the field
      Intenclr_Sof_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_SOF_Field_1 use
     (Intenclr_Sof_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for USBEVENT event
   type INTENCLR_USBEVENT_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_USBEVENT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for USBEVENT event
   type INTENCLR_USBEVENT_Field_1 is
     (--  Reset value for the field
      Intenclr_Usbevent_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_USBEVENT_Field_1 use
     (Intenclr_Usbevent_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for EP0SETUP event
   type INTENCLR_EP0SETUP_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_EP0SETUP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for EP0SETUP event
   type INTENCLR_EP0SETUP_Field_1 is
     (--  Reset value for the field
      Intenclr_Ep0Setup_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_EP0SETUP_Field_1 use
     (Intenclr_Ep0Setup_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for EPDATA event
   type INTENCLR_EPDATA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_EPDATA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for EPDATA event
   type INTENCLR_EPDATA_Field_1 is
     (--  Reset value for the field
      Intenclr_Epdata_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_EPDATA_Field_1 use
     (Intenclr_Epdata_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  Write '1' to disable interrupt for USBRESET event
      USBRESET       : INTENCLR_USBRESET_Field_1 :=
                        Intenclr_Usbreset_Field_Reset;
      --  Write '1' to disable interrupt for STARTED event
      STARTED        : INTENCLR_STARTED_Field_1 :=
                        Intenclr_Started_Field_Reset;
      --  Write '1' to disable interrupt for ENDEPIN[0] event
      ENDEPIN        : INTENCLR_ENDEPIN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write '1' to disable interrupt for EP0DATADONE event
      EP0DATADONE    : INTENCLR_EP0DATADONE_Field_1 :=
                        Intenclr_Ep0Datadone_Field_Reset;
      --  Write '1' to disable interrupt for ENDISOIN event
      ENDISOIN       : INTENCLR_ENDISOIN_Field_1 :=
                        Intenclr_Endisoin_Field_Reset;
      --  Write '1' to disable interrupt for ENDEPOUT[0] event
      ENDEPOUT       : INTENCLR_ENDEPOUT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write '1' to disable interrupt for ENDISOOUT event
      ENDISOOUT      : INTENCLR_ENDISOOUT_Field_1 :=
                        Intenclr_Endisoout_Field_Reset;
      --  Write '1' to disable interrupt for SOF event
      SOF            : INTENCLR_SOF_Field_1 := Intenclr_Sof_Field_Reset;
      --  Write '1' to disable interrupt for USBEVENT event
      USBEVENT       : INTENCLR_USBEVENT_Field_1 :=
                        Intenclr_Usbevent_Field_Reset;
      --  Write '1' to disable interrupt for EP0SETUP event
      EP0SETUP       : INTENCLR_EP0SETUP_Field_1 :=
                        Intenclr_Ep0Setup_Field_Reset;
      --  Write '1' to disable interrupt for EPDATA event
      EPDATA         : INTENCLR_EPDATA_Field_1 := Intenclr_Epdata_Field_Reset;
      --  unspecified
      Reserved_25_31 : nrf52_svd.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      USBRESET       at 0 range 0 .. 0;
      STARTED        at 0 range 1 .. 1;
      ENDEPIN        at 0 range 2 .. 9;
      EP0DATADONE    at 0 range 10 .. 10;
      ENDISOIN       at 0 range 11 .. 11;
      ENDEPOUT       at 0 range 12 .. 19;
      ENDISOOUT      at 0 range 20 .. 20;
      SOF            at 0 range 21 .. 21;
      USBEVENT       at 0 range 22 .. 22;
      EP0SETUP       at 0 range 23 .. 23;
      EPDATA         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  CRC error was detected on isochronous OUT endpoint 8. Write '1' to
   --  clear.
   type EVENTCAUSE_ISOOUTCRC_Field is
     (--  No error detected
      Notdetected,
      --  Error detected
      Detected)
     with Size => 1;
   for EVENTCAUSE_ISOOUTCRC_Field use
     (Notdetected => 0,
      Detected => 1);

   --  Signals that USB lines have been idle long enough for the device to
   --  enter suspend. Write '1' to clear.
   type EVENTCAUSE_SUSPEND_Field is
     (--  Suspend not detected
      Notdetected,
      --  Suspend detected
      Detected)
     with Size => 1;
   for EVENTCAUSE_SUSPEND_Field use
     (Notdetected => 0,
      Detected => 1);

   --  Signals that a RESUME condition (K state or activity restart) has been
   --  detected on USB lines. Write '1' to clear.
   type EVENTCAUSE_RESUME_Field is
     (--  Resume not detected
      Notdetected,
      --  Resume detected
      Detected)
     with Size => 1;
   for EVENTCAUSE_RESUME_Field use
     (Notdetected => 0,
      Detected => 1);

   --  USB MAC has been woken up and operational. Write '1' to clear.
   type EVENTCAUSE_USBWUALLOWED_Field is
     (--  Wake up not allowed
      Notallowed,
      --  Wake up allowed
      Allowed)
     with Size => 1;
   for EVENTCAUSE_USBWUALLOWED_Field use
     (Notallowed => 0,
      Allowed => 1);

   --  USB device is ready for normal operation. Write '1' to clear.
   type EVENTCAUSE_READY_Field is
     (--  USBEVENT was not issued due to USBD peripheral ready
      Notdetected,
      --  USBD peripheral is ready
      Ready)
     with Size => 1;
   for EVENTCAUSE_READY_Field use
     (Notdetected => 0,
      Ready => 1);

   --  Details on what caused the USBEVENT event
   type EVENTCAUSE_Register is record
      --  CRC error was detected on isochronous OUT endpoint 8. Write '1' to
      --  clear.
      ISOOUTCRC      : EVENTCAUSE_ISOOUTCRC_Field :=
                        nrf52_svd.USBD.Notdetected;
      --  unspecified
      Reserved_1_7   : nrf52_svd.UInt7 := 16#0#;
      --  Signals that USB lines have been idle long enough for the device to
      --  enter suspend. Write '1' to clear.
      SUSPEND        : EVENTCAUSE_SUSPEND_Field := nrf52_svd.USBD.Notdetected;
      --  Signals that a RESUME condition (K state or activity restart) has
      --  been detected on USB lines. Write '1' to clear.
      RESUME         : EVENTCAUSE_RESUME_Field := nrf52_svd.USBD.Notdetected;
      --  USB MAC has been woken up and operational. Write '1' to clear.
      USBWUALLOWED   : EVENTCAUSE_USBWUALLOWED_Field :=
                        nrf52_svd.USBD.Notallowed;
      --  USB device is ready for normal operation. Write '1' to clear.
      READY          : EVENTCAUSE_READY_Field := nrf52_svd.USBD.Notdetected;
      --  unspecified
      Reserved_12_31 : nrf52_svd.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTCAUSE_Register use record
      ISOOUTCRC      at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SUSPEND        at 0 range 8 .. 8;
      RESUME         at 0 range 9 .. 9;
      USBWUALLOWED   at 0 range 10 .. 10;
      READY          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -------------------------------------
   -- USBD_HALTED cluster's Registers --
   -------------------------------------

   --  IN endpoint halted status. Can be used as is as response to a
   --  GetStatus() request to endpoint.
   type EPIN_GETSTATUS_Field is
     (--  Endpoint is not halted
      Nothalted,
      --  Endpoint is halted
      Halted)
     with Size => 16;
   for EPIN_GETSTATUS_Field use
     (Nothalted => 0,
      Halted => 1);

   --  Description collection[n]: IN endpoint halted status. Can be used as is
   --  as response to a GetStatus() request to endpoint.
   type EPIN_HALTED_Register is record
      --  Read-only. IN endpoint halted status. Can be used as is as response
      --  to a GetStatus() request to endpoint.
      GETSTATUS      : EPIN_GETSTATUS_Field;
      --  unspecified
      Reserved_16_31 : nrf52_svd.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EPIN_HALTED_Register use record
      GETSTATUS      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Description collection[n]: IN endpoint halted status. Can be used as is
   --  as response to a GetStatus() request to endpoint.
   type EPIN_HALTED_Registers is array (0 .. 7) of EPIN_HALTED_Register;

   --  OUT endpoint halted status. Can be used as is as response to a
   --  GetStatus() request to endpoint.
   type EPOUT_GETSTATUS_Field is
     (--  Endpoint is not halted
      Nothalted,
      --  Endpoint is halted
      Halted)
     with Size => 16;
   for EPOUT_GETSTATUS_Field use
     (Nothalted => 0,
      Halted => 1);

   --  Description collection[n]: OUT endpoint halted status. Can be used as is
   --  as response to a GetStatus() request to endpoint.
   type EPOUT_HALTED_Register is record
      --  Read-only. OUT endpoint halted status. Can be used as is as response
      --  to a GetStatus() request to endpoint.
      GETSTATUS      : EPOUT_GETSTATUS_Field;
      --  unspecified
      Reserved_16_31 : nrf52_svd.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EPOUT_HALTED_Register use record
      GETSTATUS      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Description collection[n]: OUT endpoint halted status. Can be used as is
   --  as response to a GetStatus() request to endpoint.
   type EPOUT_HALTED_Registers is array (0 .. 7) of EPOUT_HALTED_Register;

   --  Unspecified
   type USBD_HALTED_Cluster is record
      --  Description collection[n]: IN endpoint halted status. Can be used as
      --  is as response to a GetStatus() request to endpoint.
      EPIN  : aliased EPIN_HALTED_Registers;
      --  Description collection[n]: OUT endpoint halted status. Can be used as
      --  is as response to a GetStatus() request to endpoint.
      EPOUT : aliased EPOUT_HALTED_Registers;
   end record
     with Size => 544;

   for USBD_HALTED_Cluster use record
      EPIN  at 16#0# range 0 .. 255;
      EPOUT at 16#24# range 0 .. 255;
   end record;

   --  Captured state of endpoint's EasyDMA registers. Write '1' to clear.
   type EPSTATUS_EPIN0_Field is
     (--  EasyDMA registers have not been captured for this endpoint
      Nodata,
      --  EasyDMA registers have been captured for this endpoint
      Datadone)
     with Size => 1;
   for EPSTATUS_EPIN0_Field use
     (Nodata => 0,
      Datadone => 1);

   --  EPSTATUS_EPIN array
   type EPSTATUS_EPIN_Field_Array is array (0 .. 8) of EPSTATUS_EPIN0_Field
     with Component_Size => 1, Size => 9;

   --  Type definition for EPSTATUS_EPIN
   type EPSTATUS_EPIN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EPIN as a value
            Val : nrf52_svd.UInt9;
         when True =>
            --  EPIN as an array
            Arr : EPSTATUS_EPIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for EPSTATUS_EPIN_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  Captured state of endpoint's EasyDMA registers. Write '1' to clear.
   type EPSTATUS_EPOUT0_Field is
     (--  EasyDMA registers have not been captured for this endpoint
      Nodata,
      --  EasyDMA registers have been captured for this endpoint
      Datadone)
     with Size => 1;
   for EPSTATUS_EPOUT0_Field use
     (Nodata => 0,
      Datadone => 1);

   --  EPSTATUS_EPOUT array
   type EPSTATUS_EPOUT_Field_Array is array (0 .. 8) of EPSTATUS_EPOUT0_Field
     with Component_Size => 1, Size => 9;

   --  Type definition for EPSTATUS_EPOUT
   type EPSTATUS_EPOUT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EPOUT as a value
            Val : nrf52_svd.UInt9;
         when True =>
            --  EPOUT as an array
            Arr : EPSTATUS_EPOUT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 9;

   for EPSTATUS_EPOUT_Field use record
      Val at 0 range 0 .. 8;
      Arr at 0 range 0 .. 8;
   end record;

   --  Provides information on which endpoint's EasyDMA registers have been
   --  captured
   type EPSTATUS_Register is record
      --  Captured state of endpoint's EasyDMA registers. Write '1' to clear.
      EPIN           : EPSTATUS_EPIN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_9_15  : nrf52_svd.UInt7 := 16#0#;
      --  Captured state of endpoint's EasyDMA registers. Write '1' to clear.
      EPOUT          : EPSTATUS_EPOUT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_25_31 : nrf52_svd.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EPSTATUS_Register use record
      EPIN           at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      EPOUT          at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Acknowledged data transfer on this IN endpoint. Write '1' to clear.
   type EPDATASTATUS_EPIN1_Field is
     (--  No acknowledged data transfer on this endpoint
      Notdone,
      --  Acknowledged data transfer on this endpoint has occurred
      Datadone)
     with Size => 1;
   for EPDATASTATUS_EPIN1_Field use
     (Notdone => 0,
      Datadone => 1);

   --  EPDATASTATUS_EPIN array
   type EPDATASTATUS_EPIN_Field_Array is array (1 .. 7)
     of EPDATASTATUS_EPIN1_Field
     with Component_Size => 1, Size => 7;

   --  Type definition for EPDATASTATUS_EPIN
   type EPDATASTATUS_EPIN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EPIN as a value
            Val : nrf52_svd.UInt7;
         when True =>
            --  EPIN as an array
            Arr : EPDATASTATUS_EPIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for EPDATASTATUS_EPIN_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  Acknowledged data transfer on this OUT endpoint. Write '1' to clear.
   type EPDATASTATUS_EPOUT1_Field is
     (--  No acknowledged data transfer on this endpoint
      Notstarted,
      --  Acknowledged data transfer on this endpoint has occurred
      Started)
     with Size => 1;
   for EPDATASTATUS_EPOUT1_Field use
     (Notstarted => 0,
      Started => 1);

   --  EPDATASTATUS_EPOUT array
   type EPDATASTATUS_EPOUT_Field_Array is array (1 .. 7)
     of EPDATASTATUS_EPOUT1_Field
     with Component_Size => 1, Size => 7;

   --  Type definition for EPDATASTATUS_EPOUT
   type EPDATASTATUS_EPOUT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EPOUT as a value
            Val : nrf52_svd.UInt7;
         when True =>
            --  EPOUT as an array
            Arr : EPDATASTATUS_EPOUT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for EPDATASTATUS_EPOUT_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  Provides information on which endpoint(s) an acknowledged data transfer
   --  has occurred (EPDATA event)
   type EPDATASTATUS_Register is record
      --  unspecified
      Reserved_0_0   : nrf52_svd.Bit := 16#0#;
      --  Acknowledged data transfer on this IN endpoint. Write '1' to clear.
      EPIN           : EPDATASTATUS_EPIN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_16  : nrf52_svd.UInt9 := 16#0#;
      --  Acknowledged data transfer on this OUT endpoint. Write '1' to clear.
      EPOUT          : EPDATASTATUS_EPOUT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : nrf52_svd.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EPDATASTATUS_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      EPIN           at 0 range 1 .. 7;
      Reserved_8_16  at 0 range 8 .. 16;
      EPOUT          at 0 range 17 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USBADDR_ADDR_Field is nrf52_svd.UInt7;

   --  Device USB address
   type USBADDR_Register is record
      --  Read-only. Device USB address
      ADDR          : USBADDR_ADDR_Field;
      --  unspecified
      Reserved_7_31 : nrf52_svd.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBADDR_Register use record
      ADDR          at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Data transfer type
   type BMREQUESTTYPE_RECIPIENT_Field is
     (--  Device
      Device,
      --  Interface
      Interface_k,
      --  Endpoint
      Endpoint,
      --  Other
      Other)
     with Size => 5;
   for BMREQUESTTYPE_RECIPIENT_Field use
     (Device => 0,
      Interface_k => 1,
      Endpoint => 2,
      Other => 3);

   --  Data transfer type
   type BMREQUESTTYPE_TYPE_Field is
     (--  Standard
      Standard,
      --  Class
      Class,
      --  Vendor
      Vendor)
     with Size => 2;
   for BMREQUESTTYPE_TYPE_Field use
     (Standard => 0,
      Class => 1,
      Vendor => 2);

   --  Data transfer direction
   type BMREQUESTTYPE_DIRECTION_Field is
     (--  Host-to-device
      Hosttodevice,
      --  Device-to-host
      Devicetohost)
     with Size => 1;
   for BMREQUESTTYPE_DIRECTION_Field use
     (Hosttodevice => 0,
      Devicetohost => 1);

   --  SETUP data, byte 0, bmRequestType
   type BMREQUESTTYPE_Register is record
      --  Read-only. Data transfer type
      RECIPIENT     : BMREQUESTTYPE_RECIPIENT_Field;
      --  Read-only. Data transfer type
      TYPE_k        : BMREQUESTTYPE_TYPE_Field;
      --  Read-only. Data transfer direction
      DIRECTION     : BMREQUESTTYPE_DIRECTION_Field;
      --  unspecified
      Reserved_8_31 : nrf52_svd.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BMREQUESTTYPE_Register use record
      RECIPIENT     at 0 range 0 .. 4;
      TYPE_k        at 0 range 5 .. 6;
      DIRECTION     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  SETUP data, byte 1, bRequest. Values provided for standard requests
   --  only, user must implement class and vendor values.
   type BREQUEST_BREQUEST_Field is
     (--  Standard request GET_STATUS
      Std_Get_Status,
      --  Standard request CLEAR_FEATURE
      Std_Clear_Feature,
      --  Standard request SET_FEATURE
      Std_Set_Feature,
      --  Standard request SET_ADDRESS
      Std_Set_Address,
      --  Standard request GET_DESCRIPTOR
      Std_Get_Descriptor,
      --  Standard request SET_DESCRIPTOR
      Std_Set_Descriptor,
      --  Standard request GET_CONFIGURATION
      Std_Get_Configuration,
      --  Standard request SET_CONFIGURATION
      Std_Set_Configuration,
      --  Standard request GET_INTERFACE
      Std_Get_Interface,
      --  Standard request SET_INTERFACE
      Std_Set_Interface,
      --  Standard request SYNCH_FRAME
      Std_Synch_Frame)
     with Size => 8;
   for BREQUEST_BREQUEST_Field use
     (Std_Get_Status => 0,
      Std_Clear_Feature => 1,
      Std_Set_Feature => 3,
      Std_Set_Address => 5,
      Std_Get_Descriptor => 6,
      Std_Set_Descriptor => 7,
      Std_Get_Configuration => 8,
      Std_Set_Configuration => 9,
      Std_Get_Interface => 10,
      Std_Set_Interface => 11,
      Std_Synch_Frame => 12);

   --  SETUP data, byte 1, bRequest
   type BREQUEST_Register is record
      --  Read-only. SETUP data, byte 1, bRequest. Values provided for standard
      --  requests only, user must implement class and vendor values.
      BREQUEST      : BREQUEST_BREQUEST_Field;
      --  unspecified
      Reserved_8_31 : nrf52_svd.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BREQUEST_Register use record
      BREQUEST      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype WVALUEL_WVALUEL_Field is nrf52_svd.Byte;

   --  SETUP data, byte 2, LSB of wValue
   type WVALUEL_Register is record
      --  Read-only. SETUP data, byte 2, LSB of wValue
      WVALUEL       : WVALUEL_WVALUEL_Field;
      --  unspecified
      Reserved_8_31 : nrf52_svd.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WVALUEL_Register use record
      WVALUEL       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype WVALUEH_WVALUEH_Field is nrf52_svd.Byte;

   --  SETUP data, byte 3, MSB of wValue
   type WVALUEH_Register is record
      --  Read-only. SETUP data, byte 3, MSB of wValue
      WVALUEH       : WVALUEH_WVALUEH_Field;
      --  unspecified
      Reserved_8_31 : nrf52_svd.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WVALUEH_Register use record
      WVALUEH       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype WINDEXL_WINDEXL_Field is nrf52_svd.Byte;

   --  SETUP data, byte 4, LSB of wIndex
   type WINDEXL_Register is record
      --  Read-only. SETUP data, byte 4, LSB of wIndex
      WINDEXL       : WINDEXL_WINDEXL_Field;
      --  unspecified
      Reserved_8_31 : nrf52_svd.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WINDEXL_Register use record
      WINDEXL       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype WINDEXH_WINDEXH_Field is nrf52_svd.Byte;

   --  SETUP data, byte 5, MSB of wIndex
   type WINDEXH_Register is record
      --  Read-only. SETUP data, byte 5, MSB of wIndex
      WINDEXH       : WINDEXH_WINDEXH_Field;
      --  unspecified
      Reserved_8_31 : nrf52_svd.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WINDEXH_Register use record
      WINDEXH       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype WLENGTHL_WLENGTHL_Field is nrf52_svd.Byte;

   --  SETUP data, byte 6, LSB of wLength
   type WLENGTHL_Register is record
      --  Read-only. SETUP data, byte 6, LSB of wLength
      WLENGTHL      : WLENGTHL_WLENGTHL_Field;
      --  unspecified
      Reserved_8_31 : nrf52_svd.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WLENGTHL_Register use record
      WLENGTHL      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype WLENGTHH_WLENGTHH_Field is nrf52_svd.Byte;

   --  SETUP data, byte 7, MSB of wLength
   type WLENGTHH_Register is record
      --  Read-only. SETUP data, byte 7, MSB of wLength
      WLENGTHH      : WLENGTHH_WLENGTHH_Field;
      --  unspecified
      Reserved_8_31 : nrf52_svd.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WLENGTHH_Register use record
      WLENGTHH      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------------------------
   -- USBD_SIZE cluster's Registers --
   -----------------------------------

   subtype EPOUT_SIZE_SIZE_Field is nrf52_svd.UInt7;

   --  Description collection[n]: Number of bytes received last in the data
   --  stage of this OUT endpoint
   type EPOUT_SIZE_Register is record
      --  Number of bytes received last in the data stage of this OUT endpoint
      SIZE          : EPOUT_SIZE_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : nrf52_svd.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EPOUT_SIZE_Register use record
      SIZE          at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Description collection[n]: Number of bytes received last in the data
   --  stage of this OUT endpoint
   type EPOUT_SIZE_Registers is array (0 .. 7) of EPOUT_SIZE_Register;

   subtype ISOOUT_SIZE_SIZE_Field is nrf52_svd.UInt10;

   --  Zero-length data packet received
   type ISOOUT_ZERO_Field is
     (--  No zero-length data received, use value in SIZE
      Normal,
      --  Zero-length data received, ignore value in SIZE
      Zerodata)
     with Size => 1;
   for ISOOUT_ZERO_Field use
     (Normal => 0,
      Zerodata => 1);

   --  Number of bytes received last on this ISO OUT data endpoint
   type ISOOUT_SIZE_Register is record
      --  Read-only. Number of bytes received last on this ISO OUT data
      --  endpoint
      SIZE           : ISOOUT_SIZE_SIZE_Field;
      --  unspecified
      Reserved_10_15 : nrf52_svd.UInt6;
      --  Read-only. Zero-length data packet received
      ZERO           : ISOOUT_ZERO_Field;
      --  unspecified
      Reserved_17_31 : nrf52_svd.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISOOUT_SIZE_Register use record
      SIZE           at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      ZERO           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Unspecified
   type USBD_SIZE_Cluster is record
      --  Description collection[n]: Number of bytes received last in the data
      --  stage of this OUT endpoint
      EPOUT  : aliased EPOUT_SIZE_Registers;
      --  Number of bytes received last on this ISO OUT data endpoint
      ISOOUT : aliased ISOOUT_SIZE_Register;
   end record
     with Size => 288;

   for USBD_SIZE_Cluster use record
      EPOUT  at 16#0# range 0 .. 255;
      ISOOUT at 16#20# range 0 .. 31;
   end record;

   --  Enable USB
   type ENABLE_ENABLE_Field is
     (--  USB peripheral is disabled
      Disabled,
      --  USB peripheral is enabled
      Enabled)
     with Size => 1;
   for ENABLE_ENABLE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable USB
   type ENABLE_Register is record
      --  Enable USB
      ENABLE        : ENABLE_ENABLE_Field := nrf52_svd.USBD.Disabled;
      --  unspecified
      Reserved_1_31 : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Control of the USB pull-up on the D+ line
   type USBPULLUP_CONNECT_Field is
     (--  Pull-up is disconnected
      Disabled,
      --  Pull-up is connected to D+
      Enabled)
     with Size => 1;
   for USBPULLUP_CONNECT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Control of the USB pull-up
   type USBPULLUP_Register is record
      --  Control of the USB pull-up on the D+ line
      CONNECT       : USBPULLUP_CONNECT_Field := nrf52_svd.USBD.Disabled;
      --  unspecified
      Reserved_1_31 : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPULLUP_Register use record
      CONNECT       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  State D+ and D- lines will be forced into by the DPDMDRIVE task
   type DPDMVALUE_STATE_Field is
     (--  Reset value for the field
      Dpdmvalue_State_Field_Reset,
      --  D+ forced low, D- forced high (K state) for a timing preset in hardware (50
--  us or 5 ms, depending on bus state)
      Resume,
      --  D+ forced high, D- forced low (J state)
      J,
      --  D+ forced low, D- forced high (K state)
      K)
     with Size => 5;
   for DPDMVALUE_STATE_Field use
     (Dpdmvalue_State_Field_Reset => 0,
      Resume => 1,
      J => 2,
      K => 4);

   --  State D+ and D- lines will be forced into by the DPDMDRIVE task. The
   --  DPDMNODRIVE task reverts the control of the lines to MAC IP (no
   --  forcing).
   type DPDMVALUE_Register is record
      --  State D+ and D- lines will be forced into by the DPDMDRIVE task
      STATE         : DPDMVALUE_STATE_Field := Dpdmvalue_State_Field_Reset;
      --  unspecified
      Reserved_5_31 : nrf52_svd.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DPDMVALUE_Register use record
      STATE         at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DTOGGLE_EP_Field is nrf52_svd.UInt3;

   --  Selects IN or OUT endpoint
   type DTOGGLE_IO_Field is
     (--  Selects OUT endpoint
      Out_k,
      --  Selects IN endpoint
      In_k)
     with Size => 1;
   for DTOGGLE_IO_Field use
     (Out_k => 0,
      In_k => 1);

   --  Data toggle value
   type DTOGGLE_VALUE_Field is
     (--  No action on data toggle when writing the register with this value
      Nop,
      --  Data toggle is DATA0 on endpoint set by EP and IO
      Data0,
      --  Data toggle is DATA1 on endpoint set by EP and IO
      Data1)
     with Size => 2;
   for DTOGGLE_VALUE_Field use
     (Nop => 0,
      Data0 => 1,
      Data1 => 2);

   --  Data toggle control and status
   type DTOGGLE_Register is record
      --  Select bulk endpoint number
      EP             : DTOGGLE_EP_Field := 16#0#;
      --  unspecified
      Reserved_3_6   : nrf52_svd.UInt4 := 16#0#;
      --  Selects IN or OUT endpoint
      IO             : DTOGGLE_IO_Field := nrf52_svd.USBD.Out_k;
      --  Data toggle value
      VALUE          : DTOGGLE_VALUE_Field := nrf52_svd.USBD.Data0;
      --  unspecified
      Reserved_10_31 : nrf52_svd.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTOGGLE_Register use record
      EP             at 0 range 0 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      IO             at 0 range 7 .. 7;
      VALUE          at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Enable IN endpoint 0
   type EPINEN_IN0_Field is
     (--  Disable endpoint IN 0 (no response to IN tokens)
      Disable,
      --  Enable endpoint IN 0 (response to IN tokens)
      Enable)
     with Size => 1;
   for EPINEN_IN0_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable IN endpoint 1
   type EPINEN_IN1_Field is
     (--  Disable endpoint IN 1 (no response to IN tokens)
      Disable,
      --  Enable endpoint IN 1 (response to IN tokens)
      Enable)
     with Size => 1;
   for EPINEN_IN1_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable IN endpoint 2
   type EPINEN_IN2_Field is
     (--  Disable endpoint IN 2 (no response to IN tokens)
      Disable,
      --  Enable endpoint IN 2 (response to IN tokens)
      Enable)
     with Size => 1;
   for EPINEN_IN2_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable IN endpoint 3
   type EPINEN_IN3_Field is
     (--  Disable endpoint IN 3 (no response to IN tokens)
      Disable,
      --  Enable endpoint IN 3 (response to IN tokens)
      Enable)
     with Size => 1;
   for EPINEN_IN3_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable IN endpoint 4
   type EPINEN_IN4_Field is
     (--  Disable endpoint IN 4 (no response to IN tokens)
      Disable,
      --  Enable endpoint IN 4 (response to IN tokens)
      Enable)
     with Size => 1;
   for EPINEN_IN4_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable IN endpoint 5
   type EPINEN_IN5_Field is
     (--  Disable endpoint IN 5 (no response to IN tokens)
      Disable,
      --  Enable endpoint IN 5 (response to IN tokens)
      Enable)
     with Size => 1;
   for EPINEN_IN5_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable IN endpoint 6
   type EPINEN_IN6_Field is
     (--  Disable endpoint IN 6 (no response to IN tokens)
      Disable,
      --  Enable endpoint IN 6 (response to IN tokens)
      Enable)
     with Size => 1;
   for EPINEN_IN6_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable IN endpoint 7
   type EPINEN_IN7_Field is
     (--  Disable endpoint IN 7 (no response to IN tokens)
      Disable,
      --  Enable endpoint IN 7 (response to IN tokens)
      Enable)
     with Size => 1;
   for EPINEN_IN7_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable ISO IN endpoint
   type EPINEN_ISOIN_Field is
     (--  Disable ISO IN endpoint 8
      Disable,
      --  Enable ISO IN endpoint 8
      Enable)
     with Size => 1;
   for EPINEN_ISOIN_Field use
     (Disable => 0,
      Enable => 1);

   --  Endpoint IN enable
   type EPINEN_Register is record
      --  Enable IN endpoint 0
      IN0           : EPINEN_IN0_Field := nrf52_svd.USBD.Enable;
      --  Enable IN endpoint 1
      IN1           : EPINEN_IN1_Field := nrf52_svd.USBD.Disable;
      --  Enable IN endpoint 2
      IN2           : EPINEN_IN2_Field := nrf52_svd.USBD.Disable;
      --  Enable IN endpoint 3
      IN3           : EPINEN_IN3_Field := nrf52_svd.USBD.Disable;
      --  Enable IN endpoint 4
      IN4           : EPINEN_IN4_Field := nrf52_svd.USBD.Disable;
      --  Enable IN endpoint 5
      IN5           : EPINEN_IN5_Field := nrf52_svd.USBD.Disable;
      --  Enable IN endpoint 6
      IN6           : EPINEN_IN6_Field := nrf52_svd.USBD.Disable;
      --  Enable IN endpoint 7
      IN7           : EPINEN_IN7_Field := nrf52_svd.USBD.Disable;
      --  Enable ISO IN endpoint
      ISOIN         : EPINEN_ISOIN_Field := nrf52_svd.USBD.Disable;
      --  unspecified
      Reserved_9_31 : nrf52_svd.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EPINEN_Register use record
      IN0           at 0 range 0 .. 0;
      IN1           at 0 range 1 .. 1;
      IN2           at 0 range 2 .. 2;
      IN3           at 0 range 3 .. 3;
      IN4           at 0 range 4 .. 4;
      IN5           at 0 range 5 .. 5;
      IN6           at 0 range 6 .. 6;
      IN7           at 0 range 7 .. 7;
      ISOIN         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Enable OUT endpoint 0
   type EPOUTEN_OUT0_Field is
     (--  Disable endpoint OUT 0 (no response to OUT tokens)
      Disable,
      --  Enable endpoint OUT 0 (response to OUT tokens)
      Enable)
     with Size => 1;
   for EPOUTEN_OUT0_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable OUT endpoint 1
   type EPOUTEN_OUT1_Field is
     (--  Disable endpoint OUT 1 (no response to OUT tokens)
      Disable,
      --  Enable endpoint OUT 1 (response to OUT tokens)
      Enable)
     with Size => 1;
   for EPOUTEN_OUT1_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable OUT endpoint 2
   type EPOUTEN_OUT2_Field is
     (--  Disable endpoint OUT 2 (no response to OUT tokens)
      Disable,
      --  Enable endpoint OUT 2 (response to OUT tokens)
      Enable)
     with Size => 1;
   for EPOUTEN_OUT2_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable OUT endpoint 3
   type EPOUTEN_OUT3_Field is
     (--  Disable endpoint OUT 3 (no response to OUT tokens)
      Disable,
      --  Enable endpoint OUT 3 (response to OUT tokens)
      Enable)
     with Size => 1;
   for EPOUTEN_OUT3_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable OUT endpoint 4
   type EPOUTEN_OUT4_Field is
     (--  Disable endpoint OUT 4 (no response to OUT tokens)
      Disable,
      --  Enable endpoint OUT 4 (response to OUT tokens)
      Enable)
     with Size => 1;
   for EPOUTEN_OUT4_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable OUT endpoint 5
   type EPOUTEN_OUT5_Field is
     (--  Disable endpoint OUT 5 (no response to OUT tokens)
      Disable,
      --  Enable endpoint OUT 5 (response to OUT tokens)
      Enable)
     with Size => 1;
   for EPOUTEN_OUT5_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable OUT endpoint 6
   type EPOUTEN_OUT6_Field is
     (--  Disable endpoint OUT 6 (no response to OUT tokens)
      Disable,
      --  Enable endpoint OUT 6 (response to OUT tokens)
      Enable)
     with Size => 1;
   for EPOUTEN_OUT6_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable OUT endpoint 7
   type EPOUTEN_OUT7_Field is
     (--  Disable endpoint OUT 7 (no response to OUT tokens)
      Disable,
      --  Enable endpoint OUT 7 (response to OUT tokens)
      Enable)
     with Size => 1;
   for EPOUTEN_OUT7_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable ISO OUT endpoint 8
   type EPOUTEN_ISOOUT_Field is
     (--  Disable ISO OUT endpoint 8
      Disable,
      --  Enable ISO OUT endpoint 8
      Enable)
     with Size => 1;
   for EPOUTEN_ISOOUT_Field use
     (Disable => 0,
      Enable => 1);

   --  Endpoint OUT enable
   type EPOUTEN_Register is record
      --  Enable OUT endpoint 0
      OUT0          : EPOUTEN_OUT0_Field := nrf52_svd.USBD.Enable;
      --  Enable OUT endpoint 1
      OUT1          : EPOUTEN_OUT1_Field := nrf52_svd.USBD.Disable;
      --  Enable OUT endpoint 2
      OUT2          : EPOUTEN_OUT2_Field := nrf52_svd.USBD.Disable;
      --  Enable OUT endpoint 3
      OUT3          : EPOUTEN_OUT3_Field := nrf52_svd.USBD.Disable;
      --  Enable OUT endpoint 4
      OUT4          : EPOUTEN_OUT4_Field := nrf52_svd.USBD.Disable;
      --  Enable OUT endpoint 5
      OUT5          : EPOUTEN_OUT5_Field := nrf52_svd.USBD.Disable;
      --  Enable OUT endpoint 6
      OUT6          : EPOUTEN_OUT6_Field := nrf52_svd.USBD.Disable;
      --  Enable OUT endpoint 7
      OUT7          : EPOUTEN_OUT7_Field := nrf52_svd.USBD.Disable;
      --  Enable ISO OUT endpoint 8
      ISOOUT        : EPOUTEN_ISOOUT_Field := nrf52_svd.USBD.Disable;
      --  unspecified
      Reserved_9_31 : nrf52_svd.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EPOUTEN_Register use record
      OUT0          at 0 range 0 .. 0;
      OUT1          at 0 range 1 .. 1;
      OUT2          at 0 range 2 .. 2;
      OUT3          at 0 range 3 .. 3;
      OUT4          at 0 range 4 .. 4;
      OUT5          at 0 range 5 .. 5;
      OUT6          at 0 range 6 .. 6;
      OUT7          at 0 range 7 .. 7;
      ISOOUT        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype EPSTALL_EP_Field is nrf52_svd.UInt3;

   --  Selects IN or OUT endpoint
   type EPSTALL_IO_Field is
     (--  Selects OUT endpoint
      Out_k,
      --  Selects IN endpoint
      In_k)
     with Size => 1;
   for EPSTALL_IO_Field use
     (Out_k => 0,
      In_k => 1);

   --  Stall selected endpoint
   type EPSTALL_STALL_Field is
     (--  Don't stall selected endpoint
      Unstall,
      --  Stall selected endpoint
      Stall)
     with Size => 1;
   for EPSTALL_STALL_Field use
     (Unstall => 0,
      Stall => 1);

   --  STALL endpoints
   type EPSTALL_Register is record
      --  Write-only. *** Reading this field has side effects on other
      --  resources ***. Select endpoint number
      EP            : EPSTALL_EP_Field := 16#0#;
      --  unspecified
      Reserved_3_6  : nrf52_svd.UInt4 := 16#0#;
      --  Write-only. *** Reading this field has side effects on other
      --  resources ***. Selects IN or OUT endpoint
      IO            : EPSTALL_IO_Field := nrf52_svd.USBD.Out_k;
      --  Write-only. *** Reading this field has side effects on other
      --  resources ***. Stall selected endpoint
      STALL         : EPSTALL_STALL_Field := nrf52_svd.USBD.Unstall;
      --  unspecified
      Reserved_9_31 : nrf52_svd.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EPSTALL_Register use record
      EP            at 0 range 0 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      IO            at 0 range 7 .. 7;
      STALL         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Controls the split of ISO buffers
   type ISOSPLIT_SPLIT_Field is
     (--  Full buffer dedicated to either iso IN or OUT
      Onedir,
      --  Lower half for IN, upper half for OUT
      Halfin)
     with Size => 16;
   for ISOSPLIT_SPLIT_Field use
     (Onedir => 0,
      Halfin => 128);

   --  Controls the split of ISO buffers
   type ISOSPLIT_Register is record
      --  Controls the split of ISO buffers
      SPLIT          : ISOSPLIT_SPLIT_Field := nrf52_svd.USBD.Onedir;
      --  unspecified
      Reserved_16_31 : nrf52_svd.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISOSPLIT_Register use record
      SPLIT          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype FRAMECNTR_FRAMECNTR_Field is nrf52_svd.UInt11;

   --  Returns the current value of the start of frame counter
   type FRAMECNTR_Register is record
      --  Read-only. Returns the current value of the start of frame counter
      FRAMECNTR      : FRAMECNTR_FRAMECNTR_Field;
      --  unspecified
      Reserved_11_31 : nrf52_svd.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FRAMECNTR_Register use record
      FRAMECNTR      at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Controls USBD peripheral low-power mode during USB suspend
   type LOWPOWER_LOWPOWER_Field is
     (--  Software must write this value to exit low power mode and before performing
--  a remote wake-up
      Forcenormal,
      --  Software must write this value to enter low power mode after DMA and
--  software have finished interacting with the USB peripheral
      Lowpower)
     with Size => 1;
   for LOWPOWER_LOWPOWER_Field use
     (Forcenormal => 0,
      Lowpower => 1);

   --  Controls USBD peripheral low power mode during USB suspend
   type LOWPOWER_Register is record
      --  Controls USBD peripheral low-power mode during USB suspend
      LOWPOWER      : LOWPOWER_LOWPOWER_Field := nrf52_svd.USBD.Forcenormal;
      --  unspecified
      Reserved_1_31 : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOWPOWER_Register use record
      LOWPOWER      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Controls the response of the ISO IN endpoint to an IN token when no data
   --  is ready to be sent
   type ISOINCONFIG_RESPONSE_Field is
     (--  Endpoint does not respond in that case
      Noresp,
      --  Endpoint responds with a zero-length data packet in that case
      Zerodata)
     with Size => 1;
   for ISOINCONFIG_RESPONSE_Field use
     (Noresp => 0,
      Zerodata => 1);

   --  Controls the response of the ISO IN endpoint to an IN token when no data
   --  is ready to be sent
   type ISOINCONFIG_Register is record
      --  Controls the response of the ISO IN endpoint to an IN token when no
      --  data is ready to be sent
      RESPONSE      : ISOINCONFIG_RESPONSE_Field := nrf52_svd.USBD.Noresp;
      --  unspecified
      Reserved_1_31 : nrf52_svd.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISOINCONFIG_Register use record
      RESPONSE      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------------------------
   -- USBD_EPIN cluster's Registers --
   -----------------------------------

   subtype MAXCNT_EPIN_MAXCNT_Field is nrf52_svd.UInt7;

   --  Description cluster[n]: Maximum number of bytes to transfer
   type MAXCNT_EPIN_Register is record
      --  Maximum number of bytes to transfer
      MAXCNT        : MAXCNT_EPIN_MAXCNT_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : nrf52_svd.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAXCNT_EPIN_Register use record
      MAXCNT        at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype AMOUNT_EPIN_AMOUNT_Field is nrf52_svd.UInt7;

   --  Description cluster[n]: Number of bytes transferred in the last
   --  transaction
   type AMOUNT_EPIN_Register is record
      --  Read-only. Number of bytes transferred in the last transaction
      AMOUNT        : AMOUNT_EPIN_AMOUNT_Field;
      --  unspecified
      Reserved_7_31 : nrf52_svd.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AMOUNT_EPIN_Register use record
      AMOUNT        at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Unspecified
   type USBD_EPIN_Cluster is record
      --  Description cluster[n]: Data pointer
      PTR    : aliased nrf52_svd.UInt32;
      --  Description cluster[n]: Maximum number of bytes to transfer
      MAXCNT : aliased MAXCNT_EPIN_Register;
      --  Description cluster[n]: Number of bytes transferred in the last
      --  transaction
      AMOUNT : aliased AMOUNT_EPIN_Register;
   end record
     with Size => 160;

   for USBD_EPIN_Cluster use record
      PTR    at 16#0# range 0 .. 31;
      MAXCNT at 16#4# range 0 .. 31;
      AMOUNT at 16#8# range 0 .. 31;
   end record;

   --  Unspecified
   type USBD_EPIN_Clusters is array (0 .. 7) of USBD_EPIN_Cluster;

   ------------------------------------
   -- USBD_ISOIN cluster's Registers --
   ------------------------------------

   subtype MAXCNT_ISOIN_MAXCNT_Field is nrf52_svd.UInt10;

   --  Maximum number of bytes to transfer
   type MAXCNT_ISOIN_Register is record
      --  Maximum number of bytes to transfer
      MAXCNT         : MAXCNT_ISOIN_MAXCNT_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : nrf52_svd.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAXCNT_ISOIN_Register use record
      MAXCNT         at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype AMOUNT_ISOIN_AMOUNT_Field is nrf52_svd.UInt10;

   --  Number of bytes transferred in the last transaction
   type AMOUNT_ISOIN_Register is record
      --  Read-only. Number of bytes transferred in the last transaction
      AMOUNT         : AMOUNT_ISOIN_AMOUNT_Field;
      --  unspecified
      Reserved_10_31 : nrf52_svd.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AMOUNT_ISOIN_Register use record
      AMOUNT         at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Unspecified
   type USBD_ISOIN_Cluster is record
      --  Data pointer
      PTR    : aliased nrf52_svd.UInt32;
      --  Maximum number of bytes to transfer
      MAXCNT : aliased MAXCNT_ISOIN_Register;
      --  Number of bytes transferred in the last transaction
      AMOUNT : aliased AMOUNT_ISOIN_Register;
   end record
     with Size => 96;

   for USBD_ISOIN_Cluster use record
      PTR    at 16#0# range 0 .. 31;
      MAXCNT at 16#4# range 0 .. 31;
      AMOUNT at 16#8# range 0 .. 31;
   end record;

   ------------------------------------
   -- USBD_EPOUT cluster's Registers --
   ------------------------------------

   subtype MAXCNT_EPOUT_MAXCNT_Field is nrf52_svd.UInt7;

   --  Description cluster[n]: Maximum number of bytes to transfer
   type MAXCNT_EPOUT_Register is record
      --  Maximum number of bytes to transfer
      MAXCNT        : MAXCNT_EPOUT_MAXCNT_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : nrf52_svd.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAXCNT_EPOUT_Register use record
      MAXCNT        at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype AMOUNT_EPOUT_AMOUNT_Field is nrf52_svd.UInt7;

   --  Description cluster[n]: Number of bytes transferred in the last
   --  transaction
   type AMOUNT_EPOUT_Register is record
      --  Read-only. Number of bytes transferred in the last transaction
      AMOUNT        : AMOUNT_EPOUT_AMOUNT_Field;
      --  unspecified
      Reserved_7_31 : nrf52_svd.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AMOUNT_EPOUT_Register use record
      AMOUNT        at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Unspecified
   type USBD_EPOUT_Cluster is record
      --  Description cluster[n]: Data pointer
      PTR    : aliased nrf52_svd.UInt32;
      --  Description cluster[n]: Maximum number of bytes to transfer
      MAXCNT : aliased MAXCNT_EPOUT_Register;
      --  Description cluster[n]: Number of bytes transferred in the last
      --  transaction
      AMOUNT : aliased AMOUNT_EPOUT_Register;
   end record
     with Size => 160;

   for USBD_EPOUT_Cluster use record
      PTR    at 16#0# range 0 .. 31;
      MAXCNT at 16#4# range 0 .. 31;
      AMOUNT at 16#8# range 0 .. 31;
   end record;

   --  Unspecified
   type USBD_EPOUT_Clusters is array (0 .. 7) of USBD_EPOUT_Cluster;

   -------------------------------------
   -- USBD_ISOOUT cluster's Registers --
   -------------------------------------

   subtype MAXCNT_ISOOUT_MAXCNT_Field is nrf52_svd.UInt10;

   --  Maximum number of bytes to transfer
   type MAXCNT_ISOOUT_Register is record
      --  Maximum number of bytes to transfer
      MAXCNT         : MAXCNT_ISOOUT_MAXCNT_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : nrf52_svd.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAXCNT_ISOOUT_Register use record
      MAXCNT         at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype AMOUNT_ISOOUT_AMOUNT_Field is nrf52_svd.UInt10;

   --  Number of bytes transferred in the last transaction
   type AMOUNT_ISOOUT_Register is record
      --  Read-only. Number of bytes transferred in the last transaction
      AMOUNT         : AMOUNT_ISOOUT_AMOUNT_Field;
      --  unspecified
      Reserved_10_31 : nrf52_svd.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AMOUNT_ISOOUT_Register use record
      AMOUNT         at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Unspecified
   type USBD_ISOOUT_Cluster is record
      --  Data pointer
      PTR    : aliased nrf52_svd.UInt32;
      --  Maximum number of bytes to transfer
      MAXCNT : aliased MAXCNT_ISOOUT_Register;
      --  Number of bytes transferred in the last transaction
      AMOUNT : aliased AMOUNT_ISOOUT_Register;
   end record
     with Size => 96;

   for USBD_ISOOUT_Cluster use record
      PTR    at 16#0# range 0 .. 31;
      MAXCNT at 16#4# range 0 .. 31;
      AMOUNT at 16#8# range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Universal serial bus device
   type USBD_Peripheral is record
      --  Description collection[n]: Captures the EPIN[n].PTR and
      --  EPIN[n].MAXCNT registers values, and enables endpoint IN n to respond
      --  to traffic from host
      TASKS_STARTEPIN    : aliased TASKS_STARTEPIN_Registers;
      --  Captures the ISOIN.PTR and ISOIN.MAXCNT registers values, and enables
      --  sending data on ISO endpoint
      TASKS_STARTISOIN   : aliased TASKS_STARTISOIN_Register;
      --  Description collection[n]: Captures the EPOUT[n].PTR and
      --  EPOUT[n].MAXCNT registers values, and enables endpoint n to respond
      --  to traffic from host
      TASKS_STARTEPOUT   : aliased TASKS_STARTEPOUT_Registers;
      --  Captures the ISOOUT.PTR and ISOOUT.MAXCNT registers values, and
      --  enables receiving of data on ISO endpoint
      TASKS_STARTISOOUT  : aliased TASKS_STARTISOOUT_Register;
      --  Allows OUT data stage on control endpoint 0
      TASKS_EP0RCVOUT    : aliased TASKS_EP0RCVOUT_Register;
      --  Allows status stage on control endpoint 0
      TASKS_EP0STATUS    : aliased TASKS_EP0STATUS_Register;
      --  Stalls data and status stage on control endpoint 0
      TASKS_EP0STALL     : aliased TASKS_EP0STALL_Register;
      --  Forces D+ and D- lines into the state defined in the DPDMVALUE
      --  register
      TASKS_DPDMDRIVE    : aliased TASKS_DPDMDRIVE_Register;
      --  Stops forcing D+ and D- lines into any state (USB engine takes
      --  control)
      TASKS_DPDMNODRIVE  : aliased TASKS_DPDMNODRIVE_Register;
      --  Signals that a USB reset condition has been detected on USB lines
      EVENTS_USBRESET    : aliased EVENTS_USBRESET_Register;
      --  Confirms that the EPIN[n].PTR and EPIN[n].MAXCNT, or EPOUT[n].PTR and
      --  EPOUT[n].MAXCNT registers have been captured on all endpoints
      --  reported in the EPSTATUS register
      EVENTS_STARTED     : aliased EVENTS_STARTED_Register;
      --  Description collection[n]: The whole EPIN[n] buffer has been
      --  consumed. The RAM buffer can be accessed safely by software.
      EVENTS_ENDEPIN     : aliased EVENTS_ENDEPIN_Registers;
      --  An acknowledged data transfer has taken place on the control endpoint
      EVENTS_EP0DATADONE : aliased EVENTS_EP0DATADONE_Register;
      --  The whole ISOIN buffer has been consumed. The RAM buffer can be
      --  accessed safely by software.
      EVENTS_ENDISOIN    : aliased EVENTS_ENDISOIN_Register;
      --  Description collection[n]: The whole EPOUT[n] buffer has been
      --  consumed. The RAM buffer can be accessed safely by software.
      EVENTS_ENDEPOUT    : aliased EVENTS_ENDEPOUT_Registers;
      --  The whole ISOOUT buffer has been consumed. The RAM buffer can be
      --  accessed safely by software.
      EVENTS_ENDISOOUT   : aliased EVENTS_ENDISOOUT_Register;
      --  Signals that a SOF (start of frame) condition has been detected on
      --  USB lines
      EVENTS_SOF         : aliased EVENTS_SOF_Register;
      --  An event or an error not covered by specific events has occurred.
      --  Check EVENTCAUSE register to find the cause.
      EVENTS_USBEVENT    : aliased EVENTS_USBEVENT_Register;
      --  A valid SETUP token has been received (and acknowledged) on the
      --  control endpoint
      EVENTS_EP0SETUP    : aliased EVENTS_EP0SETUP_Register;
      --  A data transfer has occurred on a data endpoint, indicated by the
      --  EPDATASTATUS register
      EVENTS_EPDATA      : aliased EVENTS_EPDATA_Register;
      --  Shortcut register
      SHORTS             : aliased SHORTS_Register;
      --  Enable or disable interrupt
      INTEN              : aliased INTEN_Register;
      --  Enable interrupt
      INTENSET           : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR           : aliased INTENCLR_Register;
      --  Details on what caused the USBEVENT event
      EVENTCAUSE         : aliased EVENTCAUSE_Register;
      --  Unspecified
      HALTED             : aliased USBD_HALTED_Cluster;
      --  Provides information on which endpoint's EasyDMA registers have been
      --  captured
      EPSTATUS           : aliased EPSTATUS_Register;
      --  Provides information on which endpoint(s) an acknowledged data
      --  transfer has occurred (EPDATA event)
      EPDATASTATUS       : aliased EPDATASTATUS_Register;
      --  Device USB address
      USBADDR            : aliased USBADDR_Register;
      --  SETUP data, byte 0, bmRequestType
      BMREQUESTTYPE      : aliased BMREQUESTTYPE_Register;
      --  SETUP data, byte 1, bRequest
      BREQUEST           : aliased BREQUEST_Register;
      --  SETUP data, byte 2, LSB of wValue
      WVALUEL            : aliased WVALUEL_Register;
      --  SETUP data, byte 3, MSB of wValue
      WVALUEH            : aliased WVALUEH_Register;
      --  SETUP data, byte 4, LSB of wIndex
      WINDEXL            : aliased WINDEXL_Register;
      --  SETUP data, byte 5, MSB of wIndex
      WINDEXH            : aliased WINDEXH_Register;
      --  SETUP data, byte 6, LSB of wLength
      WLENGTHL           : aliased WLENGTHL_Register;
      --  SETUP data, byte 7, MSB of wLength
      WLENGTHH           : aliased WLENGTHH_Register;
      --  Unspecified
      SIZE               : aliased USBD_SIZE_Cluster;
      --  Enable USB
      ENABLE             : aliased ENABLE_Register;
      --  Control of the USB pull-up
      USBPULLUP          : aliased USBPULLUP_Register;
      --  State D+ and D- lines will be forced into by the DPDMDRIVE task. The
      --  DPDMNODRIVE task reverts the control of the lines to MAC IP (no
      --  forcing).
      DPDMVALUE          : aliased DPDMVALUE_Register;
      --  Data toggle control and status
      DTOGGLE            : aliased DTOGGLE_Register;
      --  Endpoint IN enable
      EPINEN             : aliased EPINEN_Register;
      --  Endpoint OUT enable
      EPOUTEN            : aliased EPOUTEN_Register;
      --  STALL endpoints
      EPSTALL            : aliased EPSTALL_Register;
      --  Controls the split of ISO buffers
      ISOSPLIT           : aliased ISOSPLIT_Register;
      --  Returns the current value of the start of frame counter
      FRAMECNTR          : aliased FRAMECNTR_Register;
      --  Controls USBD peripheral low power mode during USB suspend
      LOWPOWER           : aliased LOWPOWER_Register;
      --  Controls the response of the ISO IN endpoint to an IN token when no
      --  data is ready to be sent
      ISOINCONFIG        : aliased ISOINCONFIG_Register;
      --  Unspecified
      EPIN               : aliased USBD_EPIN_Clusters;
      --  Unspecified
      ISOIN              : aliased USBD_ISOIN_Cluster;
      --  Unspecified
      EPOUT              : aliased USBD_EPOUT_Clusters;
      --  Unspecified
      ISOOUT             : aliased USBD_ISOOUT_Cluster;
   end record
     with Volatile;

   for USBD_Peripheral use record
      TASKS_STARTEPIN    at 16#4# range 0 .. 255;
      TASKS_STARTISOIN   at 16#24# range 0 .. 31;
      TASKS_STARTEPOUT   at 16#28# range 0 .. 255;
      TASKS_STARTISOOUT  at 16#48# range 0 .. 31;
      TASKS_EP0RCVOUT    at 16#4C# range 0 .. 31;
      TASKS_EP0STATUS    at 16#50# range 0 .. 31;
      TASKS_EP0STALL     at 16#54# range 0 .. 31;
      TASKS_DPDMDRIVE    at 16#58# range 0 .. 31;
      TASKS_DPDMNODRIVE  at 16#5C# range 0 .. 31;
      EVENTS_USBRESET    at 16#100# range 0 .. 31;
      EVENTS_STARTED     at 16#104# range 0 .. 31;
      EVENTS_ENDEPIN     at 16#108# range 0 .. 255;
      EVENTS_EP0DATADONE at 16#128# range 0 .. 31;
      EVENTS_ENDISOIN    at 16#12C# range 0 .. 31;
      EVENTS_ENDEPOUT    at 16#130# range 0 .. 255;
      EVENTS_ENDISOOUT   at 16#150# range 0 .. 31;
      EVENTS_SOF         at 16#154# range 0 .. 31;
      EVENTS_USBEVENT    at 16#158# range 0 .. 31;
      EVENTS_EP0SETUP    at 16#15C# range 0 .. 31;
      EVENTS_EPDATA      at 16#160# range 0 .. 31;
      SHORTS             at 16#200# range 0 .. 31;
      INTEN              at 16#300# range 0 .. 31;
      INTENSET           at 16#304# range 0 .. 31;
      INTENCLR           at 16#308# range 0 .. 31;
      EVENTCAUSE         at 16#400# range 0 .. 31;
      HALTED             at 16#420# range 0 .. 543;
      EPSTATUS           at 16#468# range 0 .. 31;
      EPDATASTATUS       at 16#46C# range 0 .. 31;
      USBADDR            at 16#470# range 0 .. 31;
      BMREQUESTTYPE      at 16#480# range 0 .. 31;
      BREQUEST           at 16#484# range 0 .. 31;
      WVALUEL            at 16#488# range 0 .. 31;
      WVALUEH            at 16#48C# range 0 .. 31;
      WINDEXL            at 16#490# range 0 .. 31;
      WINDEXH            at 16#494# range 0 .. 31;
      WLENGTHL           at 16#498# range 0 .. 31;
      WLENGTHH           at 16#49C# range 0 .. 31;
      SIZE               at 16#4A0# range 0 .. 287;
      ENABLE             at 16#500# range 0 .. 31;
      USBPULLUP          at 16#504# range 0 .. 31;
      DPDMVALUE          at 16#508# range 0 .. 31;
      DTOGGLE            at 16#50C# range 0 .. 31;
      EPINEN             at 16#510# range 0 .. 31;
      EPOUTEN            at 16#514# range 0 .. 31;
      EPSTALL            at 16#518# range 0 .. 31;
      ISOSPLIT           at 16#51C# range 0 .. 31;
      FRAMECNTR          at 16#520# range 0 .. 31;
      LOWPOWER           at 16#52C# range 0 .. 31;
      ISOINCONFIG        at 16#530# range 0 .. 31;
      EPIN               at 16#600# range 0 .. 1279;
      ISOIN              at 16#6A0# range 0 .. 95;
      EPOUT              at 16#700# range 0 .. 1279;
      ISOOUT             at 16#7A0# range 0 .. 95;
   end record;

   --  Universal serial bus device
   USBD_Periph : aliased USBD_Peripheral
     with Import, Address => USBD_Base;

end nrf52_svd.USBD;
