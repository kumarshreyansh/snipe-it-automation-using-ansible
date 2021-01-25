#!/bin/bash
cd ~
sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
cd /var/www/snipe-it
sudo add-apt-repository universe
sudo apt-get install -y git unzip php php-curl php-mysql php-gd php-ldap php-zip php-mbstring php-xml php-bcmath php-tokenizer
printf 'no\n'| sudo composer install --no-dev --prefer-source
yes | sudo php artisan key:generate
sudo systemctl restart apache2
sudo systemctl restart mysql.service
sudo service mysql status
sudo service apache2 reload
sudo service apache2 restart
