#!/bin/bash
#Author Tony Thomas
#Date 07/02/2021
#Modified 07/02/2021
#Description: Script will send an email to administrator  file name : log-alert

IT="tony@gmail.com, john@gmail.com"
if [ -s /tmp/filtered-messages ]
        then
        cat /tmp/filtered-messages | sort | uniq | mail -s “syslog message” $IT
        rm /tmp/filtered-messages #you want to delete this file to make sure that next time this file exists we get a new set of messages that doesnt include the old messages
        else
        fi
