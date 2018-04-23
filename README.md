# this script is derived from the SPI-enable.zip file used for the Up2
# board available at
https://wiki.up-community.org/Pinout_UP2#Installing_ACPI_overrides_to_enable_spi_in_userspace

# install
 sudo ./install_hooks

to add i2c/spi devices hooks

 sudo acpi-add <directory>/*.asl

# Explanation
ACPI Table upgrades can be included in the initrd image for the kernel, and
will be used by the kernel instead of the tables provided by the BIOS if
the revision number is newer.

This mechanism is documented here, along with a procedure for including the
modified tables in the initrd image:
http://lxr.free-electrons.com/source/Documentation/acpi/initrd_table_override.txt

One disadvantage with this approach is that, if the initrd image is later updated
(e.g. when installing a new kernel package), the ACPI table content is typically
not propogated to the new initrd image generated for the new kernel.

To address this, and make the ACPI table upgrades easier to install, a hook script
for initramfs-tools is provided in the 'hooks' sub-directory.  This can be run
automatically when a new initrd image is generated on a Debian/Ubuntu system, and
will check for ACPI table upgrades as .aml files in /lib/firmware/acpi-upgrades/
and will includde them in the new initrd image if present.

# Initial setup
On the target Debian/Ubuntu system (e.g. UP Board):

``` bash
sudo cp hooks/acpi-upgrades /etc/initramfs-tools/hooks/
sudo mkdir -p /lib/firmware/acpi-upgrades
```

# Adding ACPI table upgrades
Assuming you have one or more compiled .aml files that you wish to include in the initrd image:

``` bash
sudo cp *.aml /lib/firmware/acpi-upgrades`
```

To update the initrd image to include the ACPI tables, for the active kernel only:

``` bash
sudo update-initramfs -u -k `uname -r`
```

Or, to update the initrd image for all installed kernels:
``` bash
sudo update-initramfs -u -k all
```

Note that the initrd image is generated/updated automatically when a new kernel
image is installed from a .deb package.

Reboot to see your changes.  After reboot, you should find lines like this early in the
'dmesg' output, corresponding with the .aml files that you added to the initrd image:

``` bash
[    0.000000] ACPI: DSDT ACPI table found in initrd [kernel/firmware/acpi/dsdt.aml][0x16673]
```

# Checking an initrd for ACPI table overlays
As the tables are appended to the beginning of the initrd, it should be enough
to list the first entries from `lsinitramfs`, as in this example:
```
lsinitramfs /boot/initrd.img-4.8.0-34-generic | head
/boot/initrd.img-4.8.0-34-generic
kernel
kernel/firmware
kernel/firmware/acpi
kernel/firmware/acpi/adc0.aml
```
