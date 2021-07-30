/** @file
  The definition block in ACPI table for ACPI0017 device under \\SB

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
  "INTEL ",
  "AACDTabl",
  0x1000
  )
{
  External(\_SB, DeviceObj)

  Scope (\_SB) {
            Device (AACD)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "ACPI0017" /* ACPI Audio Compositor Device */)  // _HID: Hardware ID
                Name (_CID, "ACPI0017" /* ACPI Audio Compositor Device */)  // _CID: Compatible ID
                Name (_DDN, "ACPI Audio Compositor")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID

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
