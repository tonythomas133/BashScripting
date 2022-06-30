#!/bin/bash
#Author: Tony Thomas
#Date: 04/02/2021
#Modified: 0/02/2021
#Description: case-script
echo 
echo Please choose one of the options below
echo
echo ‘ a = Display Date and Time’
echo ‘b = List file and directories’
echo ‘c = List users logged in’
echo ‘d = check system uptime’

read choice
    case $choice in  # This is the general syntax for the case statement; case $variable in a) b) c).......*) esac
   a) date;;
   b) ls;;
   c) who;;
   d) uptime;;
   *) echo Invalid choice
    esac



