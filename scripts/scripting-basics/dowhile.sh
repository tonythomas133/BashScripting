#!/bin/bash
#Author: Tony Thomas
#Date: 04/02/2021
#Modified: 0/02/2021
#Description: do-while script number of seconds
count=0
num=10
while [ $count -lt 10]
do
    echo 
    echo $num seconds left to stop this process $1
    echo
    sleep 1
   num= `expr $count -1`
   count=`expr $count + 1`
done
echo
echo  $1 proccess is stopped!!
echo
