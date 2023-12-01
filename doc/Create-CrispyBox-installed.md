# CrispyBox_installed

CrispyBox_installed is a virtual machine with a minimal Debian installation.

# Creating CrispyBox_installed

## Install Debian

- **Advanced options** > **Expert install**
- Choose default values *except*:
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

When the installation is complete, reboot.

## Login to CrispyBox

Login to CrispyBox using the following credentials:

- Username: `crispybox`
- Password: `crispybox`

## Modify the MOTD

Modify the existing MOTD by typing this command...

  `~$ sudo nano /etc/motd`

...then entering this text:

```text

===== CrispyBox ============================================

 > Version: _installed (Debian XX.yy.zz-architecture)
 > Release: MM.DD.YY

 https://github.com/APrettyCoolProgram/CrispyBox

----- About this release -----------------------------------

The _installed version of CrispyBox isn't much use on it's
own. To create a fully-functional CrispyBox environment,
please see:

	https://github.com/APrettyCoolProgram/CrispyBox

============================================================

```

***

**NEXT** > [CrispyBox_bedrock](Create-CrispyBox-bedrock.md)
