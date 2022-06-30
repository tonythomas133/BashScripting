#!/bin/bash
Author: Tony Thomas
Date: 08/02/2021
Modified: 08/02/2021
Description: script to add system inventory to database file

clear
echo Please select one of the following options
echo
echo ‘a = add a record’
echo ‘d = delete a record’
echo
read choice
case $choice in
a)  /path/to/add-record;;    #make sure that you give the absolute paths othe the previous scripts here
d) /path/to/del-record;;
*) echo Invalid choice
esac

