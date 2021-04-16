 /** @file
  The definition block in ACPI table for RT711 under SoundWire Controller (link0) and
  RT1308 amplifier under I2C0 Controller

Copyright (c) 2019, Intel Corporation. All rights reserved.<BR>
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
  "INTEL",
  "RTKTabl",
  0x1000
  )
{
  External(\_SB.PC00.HDAS.SNDW, DeviceObj)

  Scope (_SB.PC00.HDAS.SNDW) {
	Device (RTK0) // RT711 on link0
        {
            Name (_ADR, 0x000020025D071100)  // _ADR: Address
        }
  }

  External(\_SB.PC00.I2C0, DeviceObj)

  Scope (\_SB.PC00.I2C0) {
            Device (RTAM)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "10EC1308" /* Realtek RT1308 I2S Audio Codec */)  // _HID: Hardware ID
                Name (_CID, "10EC1308" /* Realtek RT1308 I2S Audio Codec */)  // _CID: Compatible ID
                Name (_DDN, "Realtek RT1308 Codec Controller ")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBus (0x0010, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PC00.I2C0",
                            0x00, ResourceConsumer, ,
                            )
                    })
                    Return (SBUF) /* \_SB_PC00.I2C0.RTAM._CRS.SBUF */
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
