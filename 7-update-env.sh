#!/bin/bash
sudo sed '7 s/APP_URL=null/APP_URL=http:\/\/127.0.0.1/g' -i /var/www/snipe-it/.env
sudo sed '8 s/APP_TIMEZONE='\''UTC'\''/APP_TIMEZONE='\''US\/Pacific'\''/g' -i /var/www/snipe-it/.env
sudo sed '22 s/DB_HOST=127.0.0.1/DB_HOST=localhost/g' -i /var/www/snipe-it/.env
sudo sed '23 s/DB_DATABASE=null/DB_DATABASE=snipenew/g' -i /var/www/snipe-it/.env
sudo sed '24 s/DB_USERNAME=null/DB_USERNAME=snipe_usernew/g' -i /var/www/snipe-it/.env
sudo sed '25 s/DB_PASSWORD=null/DB_PASSWORD=1234/g' -i /var/www/snipe-it/.env
