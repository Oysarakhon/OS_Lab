echo "Display the file systems and mount points on the serverX machine"
df
echo "Show a report on the file systems on the serverX machine with all units converted to human readable format"
df -h
echo "Show disk usage report for the /root direcory on serverX"
du /root
echo "Show a disk usage report in human readable format for the /var/log directory on serverX"
du -h /var/log
echo "blkid gives an overview of existing partitions with a file system"
blkid
echo "lsof command lists all open files and the proccess"
lsof
lsof /mnt/mydata
echo "To unmount a file system, the mount command ecpects the mount point as an argument"
cd /mnt/mydata
umount /mnt/mydata