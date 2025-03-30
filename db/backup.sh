#!/bin/bash

echo "Backing up the database..."
docker exec -i $(docker ps -qf "name=my_database_container") mysqldump -u root -p$DB_PASSWORD my_database > backup.sql
echo "Backup completed!"