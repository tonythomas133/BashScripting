#!/bin/bash
# 0 = OK or successful
# 1 = Minor problem
# 2 = serious trouble
# 3-255 = everything else

# echo $? to display the exit status of the previous command


ls -l /home/tr0j3nt/check
if  [ $? -eq 0]
then
echo File exist
else
echo File does not exist
fi




