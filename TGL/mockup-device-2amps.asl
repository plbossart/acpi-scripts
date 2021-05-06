 /** @file
  The definition block in ACPI table for mockup devices emulating the
  TigerLake two-amp topology.

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
  "TGL2Tabl",
  0x1000
  )
{
  External(\_SB.PC00.HDAS.SNDW, DeviceObj)

  Scope (_SB.PC00.HDAS.SNDW) {
	Device (RTK0)
        {
            Name (_ADR, 0x0000000105AA5500)  // _ADR: Address
        }
	Device (RTK1)
        {
            Name (_ADR, 0x000100010555AA00)  // _ADR: Address
        }
	Device (RTK2)
        {
            Name (_ADR, 0x000200010555AA00)  // _ADR: Address
        }
	Device (RTK3)
        {
            Name (_ADR, 0x0003000105555500)  // _ADR: Address
        }
  }
}
