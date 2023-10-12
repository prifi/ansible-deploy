#!/bin/bash
#
## Check Disk Auto mount /data
diskstat=`lsblk|grep vdb|grep part`
if [ -n  "$diskstat" ] ; then
 echo '磁盘已分区'
        exit 1
else
echo "n
p
1


w
" | fdisk /dev/vdb
disknum=`lsblk -l|grep vdb|grep part|awk '{print $1}'`
mkfs.ext4 /dev/$disknum
uuid=`blkid /dev/$disknum |awk '{print $2}'`
fstabstat=$(echo $uuid |awk -F'=' '{print $NF}')
if [ -n "$fstabstat" ] ; then
    echo "${uuid} /data ext4 defaults,noatime,nodiratime 0 0" >> /etc/fstab
    mkdir -p /data
    mount -a
fi
fi