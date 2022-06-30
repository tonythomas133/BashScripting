#!/bin/bash
#Author: Tony Thomas
#Date: 04/02/2021
#Modified: 0/02/2021
#Description: Script will run some basic Administration tasks
echo
echo This script will run some basic administration task
echo
top | head -20
echo
df -h
echo
free -m
echo
uptime
echo
iostat
echo
echo End of Script

