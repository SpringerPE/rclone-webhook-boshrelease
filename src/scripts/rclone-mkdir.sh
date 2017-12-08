#!/bin/bash

rclone mkdir $1:$2 --config /var/vcap/jobs/backup-api/config/rclone.conf