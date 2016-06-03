#!/bin/bash
# Assumes that MySQL has already been installed and that root has no password.
# Creates the database.
sudo mysql < sql/mothy/database-create.sql

# Moves to the correct directory for the local directory.
cd ~/evillious_web/sql/mothy
sudo mysql < ~/evillious_web/sql/mothy/database-update.sql
cd ~/evillious_web
