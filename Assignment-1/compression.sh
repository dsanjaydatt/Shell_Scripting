#!/bin/bash

TMP_DIR="/tmp"
BACKUP_DIR="backup"
BACKUP_FILE="backup.tar.bz2"
EXTRACTION_DIR=(~)


if [ -d "$TMP_DIR" ]; then
    echo "Directory $TMP_DIR exists."
    echo
else
    echo "Directory $TMP_DIR does not exist."
    exit 1
fi


DIR1="$TMP_DIR/dir1"
DIR2="$TMP_DIR/dir2"
DIR3="$TMP_DIR/dir3"

sudo mkdir -p "$DIR1" && echo "Created directory: $DIR1"
sudo mkdir -p "$DIR2" && echo "Created directory: $DIR2"
sudo mkdir -p "$DIR3" && echo "Created directory: $DIR3"


sudo touch "$DIR1/file1.txt" && echo "Created empty file: $DIR1/file1.txt"
sudo touch "$DIR1/file2.txt" && echo "Created empty file: $DIR1/file2.txt"
sudo touch "$DIR1/file3.txt" && echo "Created empty file: $DIR1/file3.txt"

sudo touch "$DIR2/file1.txt" && echo "Created empty file: $DIR2/file1.txt"
sudo touch "$DIR2/file2.txt" && echo "Created empty file: $DIR2/file2.txt"
sudo touch "$DIR2/file3.txt" && echo "Created empty file: $DIR2/file3.txt"

sudo touch "$DIR3/file1.txt" && echo "Created empty file: $DIR3/file1.txt"
sudo touch "$DIR3/file2.txt" && echo "Created empty file: $DIR3/file2.txt"
sudo touch "$DIR3/file3.txt" && echo "Created empty file: $DIR3/file3.txt"

# Check if directories and files were created
all_exist=true

if [ -d "$DIR1" ]; then
    echo "Confirmed existence of directory: $DIR1"
    echo
    if [ ! -f "$DIR1/file1.txt" ]; then all_exist=false; fi
    if [ ! -f "$DIR1/file2.txt" ]; then all_exist=false; fi
    if [ ! -f "$DIR1/file3.txt" ]; then all_exist=false; fi
else
    all_exist=false
fi

if [ -d "$DIR2" ]; then
    echo "Confirmed existence of directory: $DIR2"
    echo
    if [ ! -f "$DIR2/file1.txt" ]; then all_exist=false; fi
    if [ ! -f "$DIR2/file2.txt" ]; then all_exist=false; fi
    if [ ! -f "$DIR2/file3.txt" ]; then all_exist=false; fi
else
    all_exist=false
fi

if [ -d "$DIR3" ]; then
    echo "Confirmed existence of directory: $DIR3"
    echo
    if [ ! -f "$DIR3/file1.txt" ]; then all_exist=false; fi
    if [ ! -f "$DIR3/file2.txt" ]; then all_exist=false; fi
    if [ ! -f "$DIR3/file3.txt" ]; then all_exist=false; fi
else
    all_exist=false
fi


if [ "$all_exist" = false ]; then
    echo "Some directories or files are missing. Exiting."
    echo
    exit 1
fi

# Create a backup of the /tmp directory
sudo tar -cvf $BACKUP_DIR.tar $TMP_DIR

# Check if the tar file was created
if [ -f "$BACKUP_DIR.tar" ]; then
    echo "Backup archive created successfully: $BACKUP_DIR.tar"
    echo
else
    echo "Failed to create backup archive. Exiting."
    echo
    exit 1
fi

# Compress the backup using bzip2. Note that we can compress it together with tar command as well.
sudo bzip2 -kz $BACKUP_DIR.tar

# Check if the bzip2 file was created
if [ -f "$BACKUP_FILE" ]; then
    echo "Backup archive compressed successfully: $BACKUP_FILE"
    echo
else
    echo "Failed to compress backup archive. Exiting."
    echo
    exit 1
fi

# Extract the backup folder to /home directory
sudo tar -xvf $BACKUP_FILE -C $EXTRACTION_DIR

echo "Extracted to ~ directory successfully.."
