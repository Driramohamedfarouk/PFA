#!/bin/bash 

IFS=" "
touch /data/data.txt


/usr/bin/time -v $@  > output.txt 2>&1

time_line=$(grep -m 1 "^\s*Ela" output.txt)
read -ra parts <<< "$time_line"
time="${parts[-1]}"

peakmem_line=$(grep -m 1 "^\sMaximum" output.txt)
read -ra parts <<< "$peakmem_line"
mem="${parts[-1]}"


cpu_line=$(grep -m 1 "^\sPercent" output.txt)
read -ra parts <<< "$cpu_line"
cpu="${parts[-1]}"

dr_line=$(grep -m 1 "^\sFile system inputs" output.txt)
read -ra parts <<< "$dr_line"
disk_read="${parts[-1]}"

peakmem_line=$(grep -m 1 "^\sFile system outputs" output.txt)
read -ra parts <<< "$dr_line"
disk_write="${parts[-1]}"

echo -e "$time,$mem,$cpu,$disk_read,$disk_write" >> /data/data.txt
