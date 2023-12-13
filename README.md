# About CrispyBox

Description here.

# Create a CrispyBox Bedrock image

The CrispyBox Bedrock image is a Debian-based VMWare virtual machine that you can use to build your CrispyBox development environment on top of.

## Create a new virtual machine

Technically this can be done with any virtualization software, but these instructions will be using VMWare Workstation.

Create a new VMWare Workstation virtual machine with the following specifications:

- The installer disc image (iso) should be the [Debian 12.2.0 amd64 mini.iso](https://deb.debian.org/debian/dists/bookworm/main/installer-amd64/current/images/netboot/mini.iso)
- 20GB HDD (single file)
- 4096MB RAM
- 2 CPU
- Disable "Share Bluetooth devices with the virtual machine"
- Enabled the enhanced keyboard
- Virtual Machine Settings > Processors > Virtualize IOMMU

If you are going to install desktop packages:

- Accelerate 3D graphics (8GB RAM)

When you first start the new virtual machine, you will get a popup warning you about "mitigations". To resolve this:

1. Stop the virtual machine
2. Add `ulm.disableMitigations="TRUE"`  to the end of the "CrispyBox.vmx" file
3. Restart the virtual machine.

## Next, install Debian

Technically this can be done with any Linux distribution that uses the aptitude package manager, but these instructions will be using [Debian Bookworm](https://www.debian.org/) (specifically v12.2.0)

Spin up your new virtual machine, and follow when the Debian installer starts, choose "**Advanced options** > **Expert install**"

Then, choose the default install values *except*:
  - **Configure the network** > **Hostname**: `CrispyBox`
  - **Configure the network** > **Domain name**: `CrispyBox`
  - **Set up users and passwords** > **Allow login as root?**: `no`
  - **Set up users and passwords** > **Full name for the new user**: `CrispyBox`
  - **Set up users and passwords** > **Username for your account**: `crispybox`
  - **Set up users and passwords** > **Choose a password for the new user**: `crispybox`
  - **Partition disks** > **Partitioning Scheme**: `Separate /home partitions`
  - **Install the base system** > **Drivers to include in the initrd**: `targeted`
  - **Configure the package manager** > **Use non-free software**: `Yes`
  - **Configure the package manager** > **Enable source repositories in APT**: `No`
  - **Configure the package manager** > **Services to use**: All three components should be checked
  - **Software selection** > **Choose software to install**: Uncheck everything except `standard system utilities`

When the installation is complete, the system will reboot.

# Build a CrispyBox development environment

## Logging in for the first time

After CrispyBox reboots, login to CrispyBox using the following credentials:

- Username: `crispybox`
- Password: `crispybox`

# Download and execute the CrispyBox script

The CrispyBox script will do the following:

- Create the required CrispyBox directory structure
- Remove the `sudo` password requirement for the `crispybox` user
- Modify the MOTD
- Update and upgrade the system
- Install required packages
- Clean and optimize the system

Once you are ready to build a CrispyBox development environment, type the following commands:

`~$ wget https://raw.githubusercontent.com/APrettyCoolProgram/CrispyBox/main/src/CrispyBox.sh`

`~$ chmod +x CrispyBox.sh`

`~$ ./CrispyBox.sh`


# VSCode

https://code.visualstudio.com/docs/remote/ssh#_managing-extensions