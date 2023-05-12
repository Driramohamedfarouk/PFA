#!/bin/bash 

echo "" > cpu_usage.log
while true
do       	
	# ps -e -o pcpu,psr | grep -v CPU | awk '{cpu[$2] += $1}; END {for (i in cpu) print "Core", i, "CPU Usage:", cpu[i] "%"}' >> cpu_usage.log
	for i in $(seq 0 $(($(nproc)-1))); do ps -e -o pcpu,psr | grep -w $i | awk '{print $1}' >> core_${i}_usage.log; done
	sleep 1
done 	

