#!/bin/bash
sudo apt-get update -y && sudo apt-get full-upgrade -y
sudo apt autoremove -y
echo "System updated on $(date)" >> updateLog
echo "---" >> updateLog
sudo pihole -up -y
echo "Pihole updated on $(date)" >> updateLog

echo "---" >> updateLog
echo "Apache updated on $(date)" >> updateLog
echo hostname -I >> updateLog
echo "---"
