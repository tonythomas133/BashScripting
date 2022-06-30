#!/bin/bash
#Author Tony Thomas
#Date 07/02/2021
#Modified 07/02/2021
#Description: Script will create a user account with description, ID and check
echo Pease provide a user name
read username
echo
grep -q $username /etc/passwd  #-q is the silent mode ; will not display anything on the screen
        if [ $? -eq 0 ]
        then
        echo ERROR -- user already exist
        echo please provide a unique username
        echo
        exit 0        
        fi
echo Please provide user description
read dscp
echo

echo "Do you want to specify user ID (y/n)?"
read yn
echo
    if  [ $yn == y ]
    then
    echo Please enter UID
    read uid
    grep -q $uid /etc/passwd
        if [ $? -eq 0 ]
        then
        echo $uid is already in use
        echo use another uid
        echo
        exit 0
        else 
        useradd $username -c “$dscp” -u $uid
        echo $username account has been created
        fi
   elif [ $yn == n ]
   echo
   useradd $username -c “$dscp”
   echo $username account has been created
   fi
