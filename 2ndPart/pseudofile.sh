#!/bin/bash

#pseudo filesystem
cat /proc/cpuinfo

#memory
cat /proc/meminfo

#mounts
cat /proc/mounts

#network stats
cat /proc/net/netstat

#disk usage
du /home/demotedc0der/Documents
#disk usage sum
du -s /home/demotedc0der/Documents
#disk usage humand readable
du -h /home/demotedc0der/Documents
#filesystem | USED | mounted on ...
df -a
