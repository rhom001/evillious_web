#!/bin/bash
# Backs up the database.
sudo mysql < sql/mothy/database-backup.sql

# Moves the files over from the MySQL files to the home data area.
sudo find /var/lib/mysql-files/ -type f -print0 | xargs -0 sudo mv -t ~/evillious_web/sql/mothy/data

# Deletes the database.
sudo mysql < sql/mothy/database-delete.sql
