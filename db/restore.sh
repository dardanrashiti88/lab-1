#!/bin/bash

echo "Restoring the database..."
docker exec -i $(docker ps -qf "name=my_database_container") mysql -u root -p$DB_PASSWORD my_database < backup.sql
echo "Restore completed!"
