 /** @file
  The definition block in ACPI table under SoundWire Controller,
  connecting to Realtek AIOC Rev3.

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
	Device (RTK0)  // RT711 on link0
        {
            Name (_ADR, 0x000030025D071101)  // _ADR: Address
        }
	Device (RTK1) // RT1316-1 on link1
        {
            Name (_ADR, 0x000131025D131601)  // _ADR: Address
        }
	Device (RTK2) // RT714 on link2
        {
            Name (_ADR, 0x000230025D071401)  // _ADR: Address
	}
	Device (RTK3) // RT1316-2 on link3
        {
            Name (_ADR, 0x000330025D131601)  // _ADR: Address
        }

  }
}
