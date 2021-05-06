 /** @file
  The definition block in ACPI table four SoundWire devices on HP Spectre x360

Copyright (c) 2021, Intel Corporation. All rights reserved.<BR>
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
  "RTKSDWTa",
  0x1000
  )
{
  External(\_SB.PC00.HDAS.SNDW, DeviceObj)

  Scope (_SB.PC00.HDAS.SNDW) {
	Device (RTK0)  // RT711 on link0
        {
            Name (_ADR, 0x000020025D071100)  // _ADR: Address
        }
	Device (RTK1) // RT1308 on link1
        {
            Name (_ADR, 0x000120025D130800) // _ADR: Address
        }
  }
}
