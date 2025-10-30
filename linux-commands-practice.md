

## To know list of port in the linux

sudo lsof -i -P -n

##check specific port running on linux

sudo lsof -i -P -n | grep nginx

##lsblk - list block devices (list of disks)

sudo lsblk

##  df - report file system disk space usage

df -h


## Volume resizing

after resizing the volume it will update into disk level only but to update partition and file system level to utalize this volume we have to run below commands 


sudo growpart /dev/xvda 1

sudo xfs_growfs -d /


## Attach volume to running instance.

lsblk → Lists all available block devices (disks and partitions) on the system.

mkfs -t ext4 /dev/xvdb → Formats the /dev/xvdb device with the ext4 filesystem.

mkdir -p /mnt/data → Creates a directory /mnt/data to use as a mount point (creates parent dirs if needed).

mount /dev/xvdb /mnt/data → Mounts the formatted volume /dev/xvdb to the /mnt/data directory.

du -sh /mnt/data → Displays the total disk usage of the /mnt/data directory


