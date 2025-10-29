

## to know list of port in the linux

sudo lsof -i -P -n

##check specific port running on linux

sudo lsof -i -P -n | grep nginx

##lsblk - list block devices (list of disks)

sudo lsblk

##  df - report file system disk space usage

df -h


#### Volume resizing ########

after resizing the volume it will update into disk level only but to update partition and file system level to utalize this volume we have to run below commands 


sudo growpart /dev/xvda 1

sudo xfs_growfs -d /

