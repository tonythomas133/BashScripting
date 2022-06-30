#!/bin/bash
#Author Tony Thomas
#Date 07/02/2021
#Modified 07/02/2021
#Description:  script will disable inactive user accounts with xargs
a=`lastlog | tail -n+2 | grep ‘test’ | awk ‘{print $1}'` | xargs -I{} usermod -L {}  #the flag for xargs is capital i

