#!/bin/bash
# Installs LAMP on to an Ubuntu server
# Checks if Apache is installed
sudo apt --installed list | grep apache2 &> /dev/null && echo "Apache is already installed..." || (echo "Installing Apache now..." && sudo apt-get -y install apache2 &> /dev/null)

# Checks if MySQL is installed
sudo apt --installed list | grep mysql-server &> /dev/null && echo "MySQL server is already installed..." || (echo "Installing MySQL server now..." && sudo apt-get -y install mysql-server &>/dev/null)

sudo apt --installed list php5-mysql &> /dev/null && echo "MySQL PHP has already been installed..." || (echo "Installing MySQL PHP now..." && sudo apt-get -y install php5-mysql &> /dev/null)

# Checks if PHP is installed
sudo apt --installed list | grep php5 &> /dev/null && echo "PHP is already installed..." || (echo "Installing PHP now..." && (sudo apt-get -y install php &> /dev/null || sudo apt-get -y php5 &> /dev/null)
                             
