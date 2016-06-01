#!/bin/bash
# Assumes that MySQL has already been installed and that root has no password.
sudo mysql --user=root < ../sql/mothy/database-create.sql
sudo mysql --user=root < ../sql/mothy/database-update.sql
