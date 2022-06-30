#!/bin/bash
#Author Tony Thomas
#Date 07/02/2021
#Modified 07/02/2021
#Description:script to check if home directory of a user is assigned in the /etc/passwd

cd /home
for DIR in *
do
        CHK=$(grep -c “/home/$DIR” /etc/passwd)
        if [ $CHK -ge 1 ]
        then
        echo $DIR is assigned to a user
        else
        echo $DIR is NOT assigned to a user        
        fi
done
