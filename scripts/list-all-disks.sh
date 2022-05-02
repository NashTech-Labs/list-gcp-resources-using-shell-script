#!/bin/sh
sudo apt install -y jq > /dev/null 2>&1
export DISKS_NAME_KNOLDUS=$(gcloud compute disks list --sort-by=~[creationTimestamp] --limit=2 | awk 'NR==2{print $1; exit}')
jq -n --arg knoldus_disks_latest "$DISKS_NAME_KNOLDUS" '{"knoldus_disks_latest":$knoldus_disks_latest}'