#!/bin/bash
#Author Tony Thomas
#Date 07/02/2021
#Modified 07/02/2021
#Description: script to list users logged in by user input
echo “Enter day (eg. Mon)”
read day
echo
echo “Enter month (eg. Aug)”
read month
echo “Enter date (eg. 28)”
read date
last | grep “$day $month $date”
