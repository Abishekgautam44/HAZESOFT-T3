#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

source_dir="$1"
backup_dir="/home/$USER/backup"
mkdir -p "$backup_dir"
timestamp=$(date +"%Y|%m|%d_%H:%M:%S")
backup_filename="${timestamp}.tar.gz"
backup_file="${backup_dir}/${backup_filename}"
tar czf "$backup_file" -C "$source_dir" .
if [ $? -eq 0 ]; then
    echo "Backup successful. Archive saved to: $backup_file"
else
    echo "Backup failed."
fi
