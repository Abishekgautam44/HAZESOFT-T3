#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

# Input directory to back up
source_dir="$1"

# Specify the backup directory
backup_dir="/home/$USER/backup"

# Create the backup directory if it doesn't exist
mkdir -p "$backup_dir"

# Create timestamp
timestamp=$(date +"%Y|%m|%d_%H:%M:%S")

# Specify the backup filename
backup_filename="${timestamp}.tar.gz"

# Full path of the backup file
backup_file="${backup_dir}/${backup_filename}"

# Create a compressed tar archive
tar czf "$backup_file" -C "$source_dir" .

# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "Backup successful. Archive saved to: $backup_file"
else
    echo "Backup failed."
fi
