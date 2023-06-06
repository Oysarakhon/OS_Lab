# Week - 14 ACCESSING LINUX FILE SYSTEMS
# Author
Oysarakhon Makhmudova;\
Student ID: 12230046;

In this lab I learned Storage management concepts, Examining file systems etc

# Usage

Use this git command to clone project:

```bash
git clone https://github.com/AditelJunior/OsLab.git
```

# Commands
To get an overview about the file system mount points and the amount of free space available,
run the df command. When the df command is run without arguments, it will report total disk
space, used disk space, and free disk space on all mounted regular file systems. It will report on
both local and remote systems and the percentage of the total disk space that is being used.
Display the file systems and mount points on the serverX machine.
```bash
df
```
Show a report on the file systems on the serverX machine with all units converted to human readable format
```bash
df -h
```
For more detailed information about the space used by a certain directory tree, there is the du
command. The du command has -h and -H options to convert the output to human-readable
format. The du command shows the size of all files in the current directory tree recursively.
Show a disk usage report for the /root directory on your PC:
```bash
du /root
```
Show a disk usage report in human-readable format for the /var/log directory on serverX:
```bash
du -h /var/log
```
The blkid command gives an overview of existing partitions with a file system on them and the UUID of the file system, as well as the file system used to format the partition.
```bash
blkid
```
The lsof command lists all open files and the process accessing them in the provided directory.
It is useful to identify which processes currently prevent the file system from successful
unmounting.
```bash
lsof
```
