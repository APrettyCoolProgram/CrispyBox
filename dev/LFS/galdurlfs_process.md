# galdurlsf_process

## Install Debian 12.0 amd64

### Virtual machine
- HDD: `50GB` (single file)
- Memory: `8GB`
- Processors: `4`
- Virtualize IOMMU: `checked`
- USB compatibility: `USB 3.1`
- Display: `Accelerate 3D graphics`

### .vmx file

Start the VM, and you will get a message about "mitigations".

Shut the virtual machine down, and add `ulm.disableMitigations="TRUE"`  to the end of the "CrispyBox.vmx" file

Restart the virtual machine.

### Graphical install

All default values except:

- Hostname: `galdurlsf`
- Root password: `galdurlsf`
- Username/password: `galdurlsf/galdurlsf`

Once the installation is complete, reboot the virtual machine.

### Grant `galdurlsf` user sudo access

- `$ su`
- `$ sudo visudo`
- Add `galdurlsf ALL=(ALL) ALL` to the bottom of the file, and save it.
- `ctrl-d` to return to `galdurlsf` user

## Cleanup the base install

- `$ sudo e4defrag /`
- `$ cat /dev/zero > ~/zero.zero`
- `$ rm zero.zero`
- `$ rm .bash_history`
- `$ touch .bash_history`
- `$ history -c`

### Install LFS required packages

Sextion `2.2.2. Software` of the LFS documentation lists the required packages, but the default install of Debian 12 only requires these:

- `$ sudo apt-get install build-essential bison gawk texinfo`

### Run version-check.sh

- `$ wget https://`
- `$ chmod +x version-check.sh`
- `$ ./version-check.sh`

## Install optional packages

- `$ sudo apt-get install openssh-server screen`
