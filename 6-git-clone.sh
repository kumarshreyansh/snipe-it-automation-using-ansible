#!/bin/bash
cd /var/www/
sudo git clone https://github.com/snipe/snipe-it
cd /var/www/snipe-it
sudo cp .env.example .env
#sudo systemctl restart mysql.service
#sudo service mysql status
#sudo cp /home/kumar/.env.sample .env
