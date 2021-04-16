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
  "ADLTabl",
  0x1000
  )
{
  External(\_SB.PC00.HDAS.SNDW, DeviceObj)

  Scope (_SB.PC00.HDAS.SNDW) {
	Device (RTK0) // RT711 on link0
        {
            Name (_ADR, 0x000021025D071100)  // _ADR: Address
        }
  }

}
