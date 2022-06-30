#!/bin/bash
#Author Tony Thomas
#Date 07/02/2021
#Modified 07/02/2021
#Description: script to copy files to remote system

host= `cat /hosts'   #hosts is a file that contains ips of the systems you want to send files to
for i in $host
    do
        scp somefile $i:/tmp   #somefile should be replaced by any file to want to send
    done
