# Building your own CrispyBox

These are the steps/guidelines I used to create CrispyBox 20.0

### What you will need
* The [32-bit Debian 9.2.0 netinst iso](https://cdimage.debian.org/debian-cd/current/i386/iso-cd/debian-9.2.0-i386-netinst.iso)
* [VirtualBox 6.1.0](https://www.virtualbox.org/wiki/Downloads)

Other versions of Debian and VirtualBox will probably work, but have not been tested. Other Debian-based distributions will probably work, but may require some code modifications.

### Building the base image
Create VirtualBox v6.1.0 Virtual Machine. The following specifications are recommended, but you should modify them to suit your needs.
    
|                 |   |
|-----------------|---|
| CPU             | 1 |
| RAM             | 512MB |
| HDD             | Dynamic 10GB .VDI using Host I/O |
| VRAM            | 16MB | 
| 3D Acceleration | Disabled |
| Clipboard       | Disabled |
| Network         | Bridged |

Then, install Debian 9.6.0, using "Advanced Options > Expert Install"

|  Accept all defaults, except        |   |   |
|-------------------------------------|---|---|
| Hostname                            | CrispyBox |   |
| Enable Shadow Passwords             | No |   |
| Allow login as root                 | No |   |
| Username/password                   | crispybox/crispybox |   | 
| Modules to load                     | usb-storage (USB storage | Unchecked |
| Partitioning method                 | Guided |   |
| Kernel                              | linux-image-686 |   |
| Include in the initrd               | targeted |   |
| Use non-free software               | No |   |
| Use contrib software                | No |   |
| Enable source repositories in APT   | No |   |
| Packages to install                 | virtualbox-ose-guest-x11 | Unchecked |
| Choose software to install          | Uncheck all options |   |
| Device for boot loader installation | /dev/sda |   |

Once the installation is complete, the system will reboot. When the system is back up, login as "crispybox/crispybox"

You may need to install `wget`:
```
$ sudo apt install -y  --no-install-recommends wget
```	

Then download and execute the CrispyBox build script:

```
$ wget --no-check-certificate https://raw.githubusercontent.com/APrettyCoolProgram/crispy-box/master/source/crispybox-build.sh
$ chmod +x crispybox-build.sh
$ ./crispybox-build.sh
```	

When asked to enter the SAMBA password, enter "crispybox".

After the script completes, the system will shutdown.
	
Start the VM, and then follow the instructions under "Using CrispyBox" [here](https://github.com/APrettyCoolProgram/crispy-box).
