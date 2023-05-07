#!/bin/bash

# Replace these variables with your desired database credentials
DB_NAME="mydb"
DB_USER="dbuser"
DB_PASSWORD="123456"
DB_HOST="127.0.0.1"
DB_PORT="5432"

# Backup directory. Replace the backup directory
BACKUP_DIR="/tmp"

# Create the backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Create a filename with a timestamp
FILENAME="umami_$(date '+%Y-%m-%d_%H-%M-%S').sql"

# Create a SQL dump of the Umami database
PGPASSWORD="$DB_PASSWORD" pg_dump -U "$DB_USER" -h "$DB_HOST" -p "$DB_PORT" -F p "$DB_NAME" > "${BACKUP_DIR}/${FILENAME}"

# Print the result
if [ $? -eq 0 ]; then
    echo "Backup successfully created: ${BACKUP_DIR}/${FILENAME}"
else
    echo "Backup failed."
fi