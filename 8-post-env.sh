#!/bin/bash
cd /var/www/snipe-it
sudo chown -R www-data:www-data storage public/uploads
sudo chmod -R 755 storage
sudo chmod -R 755 public/uploads
sudo chown -R www-data:www-data /var/www/snipe-it 
