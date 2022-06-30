#!/bin/bash
#Author Tony Thomas
#Date 05/02/2021
#Modified 05/02/2021
#Description: ping script for multiple ips

hosts="/hosts"                            #create a  file with multiple ips called hosts at /
for ip in $(cat $hosts)
 do    
    ping -c1 $ip &> /dev/null         #-c flag helps us specify the number of ping requests we send; in this case its 1
    if  [$? -eq 0]
    then 
    echo $ip ping passed
    else
    echo $ip ping failed
    fi
  done
  


