 /** @file
  The definition block in ACPI table for rt1308/rt711 device under SoundWire Controller

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
External(\_SB.PCI0.HDAS.SNDW, DeviceObj)

Scope (_SB.PCI0.HDAS.SNDW) {
	Device (RTK0) // RT711 on link0
        {
            Name (_ADR, 0x000021025D071100)  // _ADR: Address
        }
	Device (RTK1) // RT1308 on link1
        {
            Name (_ADR, 0x000120025D130800)  // _ADR: Address
	}
	Device (RTK2)  // RT1308 on link2
        {
            Name (_ADR, 0x000222025D130800)  // _ADR: Address
        }
	Device (RTK3)  // RT715 on link3
        {
            Name (_ADR, 0x000321025D071500)  // _ADR: Address
        }
  }
}
