#!/bin/bash
#Author Tony Thomas
#Date 07/02/2021
#Modified 07/02/2021
#Description:  script will find dead or zombie processes and kill it
 ps -ef | grep “sleep 600” | grep -v grep |awk ‘{print $2}’ | xargs -I{} kill {}
 echo All sleeping processes are killed
