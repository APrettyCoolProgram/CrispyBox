# Build a CrispyBox development environment

## Logging in for the first time

After CrispyBox reboots, login to CrispyBox using the following credentials:

- Username: `crispybox`
- Password: `crispybox`

# Download and execute the CrispyBox script

The CrispyBox script will do the following:

- Creates required CrispyBox directory structure
- Removes the `sudo` password requirement for the `crispybox` user
- Modifies the MOTD
- Updates/upgrades the system
- Installs the following packages:
  - `open-vm-tools`
  - `net-tools`
  - `openssh-server`
- Cleans the system
- Optimizes the system

Once you are ready to build a CrispyBox development environment, type the following commands:

`~$ wget https://raw.githubusercontent.com/APrettyCoolProgram/CrispyBox/main/src/CrispyBox.sh`

`~$ chmod +x CrispyBox.sh`

`~$ ./CrispyBox.sh`

Once the virtual machine has restarted, you can build your [CrispyBox development environment](Build%20a%20CrispyBox%20environment.md).
