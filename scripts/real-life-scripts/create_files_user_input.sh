#!/bin/bash
#Author Tony Thomas
#Date 07/02/2021
#Modified 07/02/2021
#Description: script to create multiple files with user input
echo
echo number of files to be created
read count
echo enter the prefix of the filename    # by prefix is mean what ever prefix the user input a file will create <prefix>.<number>
read prefix
for i in $(seq 1 $t)    #seq 1 $t is similar to 1..n , the only difference is that 1..n will only work if you have integers ...it will not work with variables
   do
    touch $prefix.$i
   done
    
