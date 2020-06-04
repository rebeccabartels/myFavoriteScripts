#!/bin/bash

# Create /var/backup if it doesn't exist
mkdir -p /var/backup

# Create new /var/backup/home.tar
tar cvzf /var/backup/home.tar /home

# Moves the file `/var/backups/home.tar.gz` to `/var/backups/home.last.tar.gz`.
mv /var/backups/home.tar.gz /var/backups/home.last.tar.gz

# Creates a gzip-compressed archive of `/home`and saves it to `/var/backups/home.tar.gz`.
tar cvzf /var/backup/system.tar.gz /home 	

# List all files in `/var/backups`, including file sizes, and save the output to `/var/backups/file_report.txt`.
ls -lh /var/backups > /var/backups/file_report.txt

# Print how much free memory your machine has left. Save this to a file called `/var/backups/disk_report.txt`.
free -h > /var/backups/disk_report.txt
