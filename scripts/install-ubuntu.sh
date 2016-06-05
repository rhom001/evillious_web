#!/bin/bash
# Installs LAMP on to an Ubuntu server
# Checks if Apache is installed
sudo dpkg -l | grep apache2 &> /dev/null && echo "Apache is already installed..." || (echo "Installing Apache now..." && sudo apt-get -y install apache2 &> /dev/null)

# Checks if PHP mod for Apache is installed
(sudo dpkg -l | grep installed | grep libapache2-mod-php5 &> /dev/null || (sudo dpkg --list | grep installed | grep libapache2-mod-php) && echo "Apache has PHP enabled..." || (echo "Enabling PHP for Apache now..." && (sudo apt-get -y install libapache2-mod-php5 &> /dev/null || sudo apt-get -y install libapache2-mod-php &> /dev/null)

# Checks if MySQL is installed
sudo dpkg -l | grep mysql-server &> /dev/null && echo "MySQL server is already installed..." || (echo "Installing MySQL server now..." && sudo apt-get -y install mysql-server &>/dev/null)

sudo dpkg -l php5-mysql &> /dev/null && echo "MySQL PHP has already been installed..." || (echo "Installing MySQL PHP now..." && (sudo apt-get -y install php5-mysql &> /dev/null || sudo apt-get -y install php-mysql &> /dev/null))

# Checks if PHP is installed
sudo dpkg -l | grep php &> /dev/null && echo "PHP is already installed..." || (echo "Installing PHP now..." && (sudo apt-get -y install php &> /dev/null || sudo apt-get -y php5 &> /dev/null))
