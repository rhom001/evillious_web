#!/bin/bash
# Installs LAMP on to an Ubuntu server
sudo apt-get install apache2 mysql-server php libapache2-mod-php php-mcrypt php-mysql php-cli

# Turns on Apache port
sudo ufw allow in "Apache Full"

# Does secure installation for MySQL (set password validator to MEDIUM and yes to everything else)
sudo mysql_secure_installation
