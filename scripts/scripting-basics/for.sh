#!/bin/bash
#Author: Tony Thomas
#Date: 04/02/2021
#Modified: 0/02/2021
#Description: script for listing all users in a system
i=1
for username in `awk -F: '$3>999{print $1}' /etc/passwd`  #the $3>999 is for centos 7 ; if you are using centos 6 the condition will be $3>499
do
 echo "Username $((i++)) : $username"
done

