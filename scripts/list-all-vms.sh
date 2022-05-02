#!/bin/sh
sudo apt install -y jq > /dev/null 2>&1
export VM_NAME_KNOLDUS=$(gcloud compute instances list --sort-by=~[creationTimestamp] --limit=1 --filter="name=#CHANGE_IT" | awk 'NR==2{print $1; exit}')
jq -n --arg knoldus_vm_latest "$VM_NAME_KNOLDUS" '{"knoldus_vm_latest":$knoldus_vm_latest}'