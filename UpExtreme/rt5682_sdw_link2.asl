 /** @file
  The definition block in ACPI table for RT5682 under SoundWire Controller
  (link2)

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
  "RTK0Tabl",
  0x1000
  )
{
  External(\_SB.PCI0.HDAS.SNDW, DeviceObj)

  Scope (_SB.PCI0.HDAS.SNDW) {
	Device (RTK0) // RT5682 on link2
        {
            Name (_ADR, 0x000220025D568200)  // _ADR: Address
        }
  }
}
