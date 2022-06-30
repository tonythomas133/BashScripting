#!/bin/bash
#Author Tony Thomas
#Date 05/02/2021
#Modified 05/02/2021
#Description: Admin commands
date | awk ‘{print $1}’ #shows just the date
uptime | awk ‘{print $3}’ #shows only the amount of time the system has been up
df -h | grep root #shows the partition and disk details of the root

