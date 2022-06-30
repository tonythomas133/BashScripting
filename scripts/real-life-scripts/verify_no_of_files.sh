#!/bin/bash
Author: Tony Thomas
Date: 08/02/2021
Modified: 08/02/2021
Description: script to verify total number of files

count=`ls -l file* | wc -l`
if [ $count -eq 20 ]
then
echo there are $count files
else
echo files are less than 20. Please wait till all the required files are made.
