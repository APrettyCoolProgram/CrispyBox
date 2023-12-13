# Create a CrispyBox Base image

### Create a new virtual machine

Technically this can be done with any virtualization software, but these instructions will be using VMWare Workstation.

Create a new VMWare Workstation virtual machine with the following specifications:

- The installer disc image (iso) should be the [Debian 12.2.0 amd64 mini.iso](https://deb.debian.org/debian/dists/bookworm/main/installer-amd64/current/images/netboot/mini.iso)
- 20GB HDD (single file)
- 4096MB RAM
- 2 CPU
- Disable "Share Bluetooth devices with the virtual machine"

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
  - **Partition disks** > **Partitioning Scheme**: `Separate /home, /var, and /tmp partitions`
  - **Install the base system** > **Drivers to include in the initrd**: `targeted`
  - **Configure the package manager** > **Use non-free software**: `Yes`
  - **Configure the package manager** > **Enable source repositories in APT**: `No`
  - **Configure the package manager** > **Services to use**: All three components should be checked
  - **Software selection** > **Choose software to install**: Uncheck everything except `standard system utilities`

When the installation is complete, reboot by typing:

`~$ sudo reboot`