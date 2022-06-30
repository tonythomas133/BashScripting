#!/bin/bash
Author: Tony Thomas
Date: 08/02/2021
Modified: 08/02/2021
Description: script for checking disk space

df -H | grep -vE ‘^Filesystem|tmpfs|cdrom’ | awk ‘{print $5, $1}’ | while read output
do
    usep=$ ( echo $output | awk ‘{print $1}’ | cut -d'%' -f1 )
    partition=$ ( echo $output | awk ‘{print $2}’ )
    if [ $usep -ge 90 ]
    then
    echo “running out of space \"$partition ($usep%) \” on $(hostname) as on $(date)"
    fi
done

