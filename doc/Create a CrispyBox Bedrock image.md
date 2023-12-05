# Create a CrispyBox Bedrock image

This document will walk through creating a CrispyBox Bedrock image, which you will need to build a CrispyBox development environment.

## First, create a new virtual machine

Technically this can be done with any virtualization software, but these instructions will be using VMWare Workstation.

Create a new VMWare Workstation virtual machine with the following specifications:

- The installer disc image (iso) should be the [Debian 12.2.0 amd64 mini.iso](https://deb.debian.org/debian/dists/bookworm/main/installer-amd64/current/images/netboot/mini.iso)
- 20GB HDD (single file)
- 4096MB RAM
- 2 CPU
- Accelerate 3D graphics (8GB RAM)
- Disable "Share Bluetooth devices with the virtual machine"

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
  - **Partition disks** > **Partitioning Scheme**: `Separate /home, /var, and /tmp partitions`
  - **Install the base system** > **Drivers to include in the initrd**: `targeted`
  - **Configure the package manager** > **Use non-free firmware**: `Yes`
  - **Configure the package manager** > **Use non-free software**: `Yes`
  - **Configure the package manager** > **Enable source repositories in APT**: `No`
  - **Configure the package manager** > **Services to use**: All three components should be checked
  - **Software selection** > **Choose software to install**: Uncheck everything except `standard system utilities`

When the installation is complete, reboot by typing:

`~$ sudo reboot`  

## Loging in for the first time

After CrispyBox reboots, login to CrispyBox using the following credentials:

- Username: `crispybox`
- Password: `crispybox`

# Download and execute the CrispyBox_bedrock script

The CrispyBox_bedrock script will do the following:

- Creates required CrispyBox directory structure
- Removes the `sudo` password requirement for the `crispybox` user
- Modifies the MOTD

Once you are ready to build a CrispyBox development environment, type the following commands:

`~$ wget https://raw.githubusercontent.com/APrettyCoolProgram/CrispyBox/main/src/CrispyBox_build.sh`

`~$ chmod +x CrispyBox_build.sh`

`~$ ./CrispyBox_build.sh`




Once the virtual machine has restarted, you can build your [CrispyBox development environment](Build%20a%20CrispyBox%20environment.md).
