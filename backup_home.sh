#!/bin/bash
echo "$(date) - [$USER] ran script :$0 " >> search_log.txt
echo "==========================================="
echo "Starting backup from /home directory..."
echo " Backup will be saved at: /tmp/home_backup.tar.gz"
echo "==========================================="
sleep 1

# Start backup process
tar -czvf /tmp/home_backup$DATE.tar.gz /home

# Check if backup succeeded
if [ $? -eq 0 ]; then
    echo "Backup completed successfully!"
else
    echo "Backup failed!"
fi

echo "Goodbye!"

