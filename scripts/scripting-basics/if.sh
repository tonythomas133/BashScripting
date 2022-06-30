#!/bin/bash
#Author: Tony Thomas
#Date: 04/02/2021
#Modified: 0/02/2021
#Description: if-then-script-2
clear
if ( -e /home/tr0j3nt/error.txt ) #change the tr0j3nt with your hostname
    then
    echo “File Exists” 
    else
    echo “File does not exist” 
fi    


