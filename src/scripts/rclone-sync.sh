#!/bin/bash

set -e

#sync from local path to remote path
echo "************

local files to be transferred: $1 
destination path: gcp:ee-rclone-backup/$2

"
rclone sync -v $1 gcp:ee-rclone-backup/$2
echo "
***********"



#List local path content
echo "***********

Files in local path: $1

"
tree -a $1
echo "
***********"

#List remote path content
echo "***********

Files in gcp:ee-rclone-backup/$2

"
rclone ls gcp:ee-rclone-backup/$2
echo "
***********"
