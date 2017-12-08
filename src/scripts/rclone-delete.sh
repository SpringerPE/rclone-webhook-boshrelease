#!/bin/bash

rclone delete $1:$2 $3 --config /var/vcap/jobs/backup-api/config/rclone.conf