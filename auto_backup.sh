#!/bin/bash

# Set directories
SRC_DIR="/opt/senaite/data"
DEST_DIR="/opt/senaite/backup"

# Create backup name with timestamp
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_NAME="data_${TIMESTAMP}"

# Create the backup
cp -r "$SRC_DIR" "$DEST_DIR/$BACKUP_NAME"

# Delete backups older than 24 hours
find "$DEST_DIR" -maxdepth 1 -type d -name "data_*" -mmin +1440 -exec rm -rf {} \;

echo "Backup completed at $(date). Old backups deleted."
