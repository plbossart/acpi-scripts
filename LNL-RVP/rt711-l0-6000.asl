 /** @file
  The definition block in ACPI table for LNL-RVP SoundWire tests

  Copyright (c) 2023, Intel Corporation. All rights reserved.
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
  "LNL1Tabl",
  0x1000
  )
{
  External(\_SB.PC00.HDAS.IDA, DeviceObj)


  Scope (_SB.PC00.HDAS.IDA) {

	Device (SDWP)
            {
                Name (_ADR, 0x40000001)  // _ADR: Address
                Name (_CID, Package (0x02)  // _CID: Compatible ID
                {
                    "PRP00001",
                    "PNP0A05" /* Generic Container Device */
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0xF)
                }

	// link0: rt711
	Device (PLB0)
        {
            Name (_ADR, 0x000030025d071101)  // _ADR: Address
        }

        Name (_DSD, Package (0x04)  // _DSD: Device-Specific Data
        {
            ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */,
            Package (0x02)
            {
                Package (0x02)
                {
                    "mipi-sdw-sw-interface-revision",
                    0x00010000
                },

                Package (0x02)
                {
                    "mipi-sdw-master-count",
                    0x04
                }
            },

            ToUUID ("dbb8e3e6-5886-4ba6-8795-1319f52a966b") /* Hierarchical Data Extension */,
            Package (0x04)
            {
                Package (0x02)
                {
                    "mipi-sdw-link-0-subproperties",
                    "LNK0"
                },

                Package (0x02)
                {
                    "mipi-sdw-link-1-subproperties",
                    "LNK1"
                },

                Package (0x02)
                {
                    "mipi-sdw-link-2-subproperties",
                    "LNK2"
                },

                Package (0x02)
                {
                    "mipi-sdw-link-3-subproperties",
                    "LNK3"
                }
            }
        })
        Name (LNK0, Package (0x02)
        {
            ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */,
            Package (0x0D)
            {
                Package (0x02)
                {
                    "intel-quirk-mask",
                    Zero
                },

                Package (0x02)
                {
                    "intel-sdw-ip-clock",
                    96000000
                },

                Package (0x02)
                {
                    "intel-sdw-doais",
                    One
                },

                Package (0x02)
                {
                    "intel-sdw-dods",
                    One
                },

                Package (0x02)
                {
                    "intel-autonomous-clock-stop",
                    Zero
                },

                Package (0x02)
                {
                    "mipi-sdw-clock-stop-mode0-supported",
                    One
                },

                Package (0x02)
                {
                    "mipi-sdw-clock-stop-mode1-supported",
                    One
                },

                Package (0x02)
                {
                    "mipi-sdw-clock-frequencies-supported",
                    Package (0x01)
                    {
                        6000000
                    }
                },

                Package (0x02)
                {
                    "mipi-sdw-default-frame-rate",
                    48000
                },

                Package (0x02)
                {
                    "mipi-sdw-default-frame-row-size",
                    125
                },

                Package (0x02)
                {
                    "mipi-sdw-default-frame-col-size",
                    2
                },

                Package (0x02)
                {
                    "mipi-sdw-dynamic-frame-shape",
                    One
                },

                Package (0x02)
                {
                    "mipi-sdw-command-error-threshold",
                    0x10
                }
            }
        })
        Name (LNK1, Package (0x02)
        {
            ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */,
            Package (0x0D)
            {
                Package (0x02)
                {
                    "intel-quirk-mask",
                    Zero
                },

                Package (0x02)
                {
                    "intel-sdw-ip-clock",
                    96000000
                },

                Package (0x02)
                {
                    "intel-sdw-doais",
                    One
                },

                Package (0x02)
                {
                    "intel-sdw-dods",
                    One
                },

                Package (0x02)
                {
                    "intel-autonomous-clock-stop",
                    Zero
                },

                Package (0x02)
                {
                    "mipi-sdw-clock-stop-mode0-supported",
                    One
                },

                Package (0x02)
                {
                    "mipi-sdw-clock-stop-mode1-supported",
                    One
                },

                Package (0x02)
                {
                    "mipi-sdw-clock-frequencies-supported",
                    Package (0x01)
                    {
                        6000000
                    }
                },

                Package (0x02)
                {
                    "mipi-sdw-default-frame-rate",
                    48000
                },

                Package (0x02)
                {
                    "mipi-sdw-default-frame-row-size",
                    125
                },

                Package (0x02)
                {
                    "mipi-sdw-default-frame-col-size",
                    2
                },

                Package (0x02)
                {
                    "mipi-sdw-dynamic-frame-shape",
                    One
                },

                Package (0x02)
                {
                    "mipi-sdw-command-error-threshold",
                    0x10
                }
            }
        })
        Name (LNK2, Package (0x02)
        {
            ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */,
            Package (0x0D)
            {
                Package (0x02)
                {
                    "intel-quirk-mask",
                    Zero
                },

                Package (0x02)
                {
                    "intel-sdw-ip-clock",
                    96000000
                },

                Package (0x02)
                {
                    "intel-sdw-doais",
                    One
                },

                Package (0x02)
                {
                    "intel-sdw-dods",
                    One
                },

                Package (0x02)
                {
                    "intel-autonomous-clock-stop",
                    Zero
                },

                Package (0x02)
                {
                    "mipi-sdw-clock-stop-mode0-supported",
                    One
                },

                Package (0x02)
                {
                    "mipi-sdw-clock-stop-mode1-supported",
                    One
                },

                Package (0x02)
                {
                    "mipi-sdw-clock-frequencies-supported",
                    Package (0x01)
                    {
                        6000000
                    }
                },

                Package (0x02)
                {
                    "mipi-sdw-default-frame-rate",
                    48000
                },

                Package (0x02)
                {
                    "mipi-sdw-default-frame-row-size",
                    125
                },

                Package (0x02)
                {
                    "mipi-sdw-default-frame-col-size",
                    2
                },

                Package (0x02)
                {
                    "mipi-sdw-dynamic-frame-shape",
                    One
                },

                Package (0x02)
                {
                    "mipi-sdw-command-error-threshold",
                    0x10
                }
            }
        })
        Name (LNK3, Package (0x02)
        {
            ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */,
            Package (0x0D)
            {
                Package (0x02)
                {
                    "intel-quirk-mask",
                    Zero
                },

                Package (0x02)
                {
                    "intel-sdw-ip-clock",
                    96000000
                },

                Package (0x02)
                {
                    "intel-sdw-doais",
                    One
                },

                Package (0x02)
                {
                    "intel-sdw-dods",
                    One
                },

                Package (0x02)
                {
                    "intel-autonomous-clock-stop",
                    Zero
                },

                Package (0x02)
                {
                    "mipi-sdw-clock-stop-mode0-supported",
                    One
                },

                Package (0x02)
                {
                    "mipi-sdw-clock-stop-mode1-supported",
                    One
                },

                Package (0x02)
                {
                    "mipi-sdw-clock-frequencies-supported",
                    Package (0x01)
                    {
                        6000000
                    }
                },

                Package (0x02)
                {
                    "mipi-sdw-default-frame-rate",
                    48000
                },

                Package (0x02)
                {
                    "mipi-sdw-default-frame-row-size",
                    125
                },

                Package (0x02)
                {
                    "mipi-sdw-default-frame-col-size",
                    2
                },

                Package (0x02)
                {
                    "mipi-sdw-dynamic-frame-shape",
                    One
                },

                Package (0x02)
                {
                    "mipi-sdw-command-error-threshold",
                    0x10
                }
            }
        })
   }
}
}
