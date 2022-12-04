 /** @file
  The definition block in ACPI table for RT711-sdca under SoundWire Controller (link0)

Copyright (c) 2022, Intel Corporation. All rights reserved.<BR>
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
  "MtlP_Rvp",
  0x1000
  )
{
  External(\_SB.PC00.HDAS.IDA.SNDW, DeviceObj)

  Scope (_SB.PC00.HDAS.IDA.SNDW) {
	Device (SD00) // RT711 on link0
        {
            Name (_ADR, 0x000030025D071101)  // _ADR: Address
        }
  }
}
