#!/bin/bash
cd /var/www/
sudo git clone https://github.com/snipe/snipe-it
cd /var/www/snipe-it
sudo cp .env.example .env
