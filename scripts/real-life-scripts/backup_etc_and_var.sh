#!/bin/bash
#Author Tony Thomas
#Date 07/02/2021
#Modified 07/02/2021
#Description: backup /etc and /var

tar cvf /tmp/backup.tar /etc /var
gzip /tmp/backup.tar

find backup.tar.gz -mtime -1 -type f -print &> /dev/null

if [$? -eq 0]
    then
    echo Backup was created
    echo
    echo Archiving backup
  # scp /tmp/backup.tar root@192.168.1.3:/<path>  uncomment this line only if you have to send the file over to another system
    else
    echo Backup failed
fi


