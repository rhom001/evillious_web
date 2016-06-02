#!/bin/bash
# Backs up the database and then cleans up the database.
sudo mysql < ../sql/mothy/database-backup.sql
sudo mysql < ../sql/mothy/database-delete.sql
