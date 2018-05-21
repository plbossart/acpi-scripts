/** @file
  The definition block in ACPI table for WM8804 device under I2C5 Controller

Copyright (c) 2015, Intel Corporation. All rights reserved.<BR>
  This program and the accompanying materials
  are licensed and made available under the terms and conditions of the BSD License
  which accompanies this distribution.  The full text of the license may be found at
  http://opensource.org/licenses/bsd-license.php

  THE PROGRAM IS DISTRIBUTED UNDER THE BSD LICENSE ON AN "AS IS" BASIS,
  WITHOUT WARRANTIES OR REPRESENTATIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED.
**/

DefinitionBlock (
  "",
  "SSDT",
   2,
  "INTEL ",
  "WLFSTabl",
  0x1000
  )
{
  External(\_SB.PCI0.I2C1, DeviceObj)

  Scope (\_SB.PCI0.I2C1) {
            Device (WLFS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "1AEC8804" /* Wolfson/Cirrus WM8804 I2S Audio Codec */)  // _HID: Hardware ID
                Name (_CID, "1AEC8804" /* Wolfson/Cirrus WM8804 I2S Audio Codec */)  // _CID: Compatible ID
                Name (_DDN, "Wolfson/CirrusLogic WM8804 Codec Controller ")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x003B, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C1",
                            0x00, ResourceConsumer, ,
                            )
                    })
                    Return (SBUF) /* \_SB_PCI0.I2C1.WLFS._CRS.SBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                        Return (0x0F)
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                }
         }
  }
}
