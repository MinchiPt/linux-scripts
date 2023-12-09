#!/bin/bash
# Echo Command Usage in Script
os_version=$(grep -i "PRETTY_NAME" /etc/os-release  | awk -F'=' '{print $2}' | sed 's/"//g')
no_cpus=$(lscpu  | grep  '^CPU(s):' | awk -F":" '{print $2}' | sed "s/^[ \t]*//")
total_mem=$(grep MemTotal /proc/meminfo | awk -F":" '{print $2}' | sed "s/^[ \t]*//")
echo 'OS Version :' $os_version
echo 'Number of CPUs :' $no_cpus
echo 'Total Memory :' $total_mem
