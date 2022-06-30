#!/bin/bash
#Author Tony Thomas
#Date 06/02/2021
#Modified 06/02/2021
#Description: This script deletes files older than 90 days"

find /home/tr0j3nt/ -mtime +90 -exec rm {} \;       #-mtime +90 will find files older than 90 days -exec is used to execute commands {} gives us the output

