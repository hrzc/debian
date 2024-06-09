#!/bin/bash

sudo apt update
sudo apt -y install php8.2

# Apache 2
# sudo apt -y install php-common libapache2-mod-php php-cli

# MySQL
# sudo apt -y install php-mysql

# cURL
# sudo apt -y install php-curl

# Restart Apache 2 using systemd
# sudo systemctl restart apache2

# Restart Apache 2 using service command
# sudo service apache2 restart

# Stopping and starting Apache once PHP is installed
# sudo /etc/init.d/apache2 stop
# sudo /etc/init.d/apache2 start

# Listing additional packages
# sudo apt-cache search php
# sudo apt search php | grep -i mysql
# sudo aptitude search php

# Reference(s):
# 1. <https://www.php.net/manual/en/install.unix.debian.php>
