# Create a CrispyBox snapshot archive

Snapshot archives are taken at various points of CrispyBox development.

## Cleaning up CrispyBox

From within CrispyBox:

`~$ sudo e4defrag /`  
`~$ cat /dev/zero > ~/zero.zero`  
`~$ rm ~/zero.zero`  
`~$ sudo e4defrag /`  
`~$ rm .bash_history`  
`~$ touch .bash_history`  
`~$ history -c`  
`~$ sudo shutdown -h now`  

## Cleaning up the virtual image

From within VMWare Workstation:

1. Defragment the virtual disk
2. Compact the virtual disk

## Archiving the snapshot

Use 7-zip to archive CrispyBox as `CrispyBox_<name>.7z` with the following settings:

- Compression level: `Ultra`
- Compression method: `LZMA2`
- Dictionary size: `1024MB`
- Word size: `256MB`
- Solid block size: `16GB`
- Number of CPU threads: `2`
- Memory usage for compressing: `80%`
