# Virtual development environments

## LinWinDev

LinWinDev is a virtual development environment using [Ubuntu Multipass](https://multipass.run/).

LinWinDev v23 is built using:

- Ubuntu 23.04
- 2 CPU
- 10GB HDD
- 4GB RAM

### Creating LinWinDev

1. Install Ubuntu Multipass
2. Remove all existing Multipass guests

```
$ multipass delete --purge primary
```

3. Create the LinWinDev environment

```
multipass launch lunar --name LinWinDevev --cpus 2 --disk 10G --memory 4G --mount C:\Users\cbanw\Development:windev
```

### Enable mount points

```
$ multipass set local.privileged-mounts=Yes
```

### Start and update LinWinDev

1. Update/upgrade LinWinDev

```
$ sudo apt update
$ sudo apt upgrade
```
        