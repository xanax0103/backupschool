#!/bin/bash

$ sudo rsync -aAXv / --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} /mnt/iscsi_disk

#1. mount usb/drive til server
#2. ændre til sidst i scriptet med destination af backup
#The backup contains the entire root (/) directory, excluding /dev, /proc, /sys, /tmp, /run, /mnt, /media, /lost+found directories, and save the data in selected folder set in step 2.
#This script is scheduled to run every night at 2:00 am with cronjob (etc/cron.d/fullbackup.sh) 