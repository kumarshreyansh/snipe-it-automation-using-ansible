#!/bin/bash
sudo mv ./kumar.kumarsinfra.com.conf /etc/apache2/sites-available/kumar.kumarsinfra.com.conf
sudo a2ensite kumar.kumarsinfra.com.conf
sudo a2enmod rewrite
sudo systemctl restart apache2
sudo a2dissite 000-default.conf
sudo service apache2 reload
cd /etc/apache2/sites-available
sudo cp 000-default.conf 000-default.confTEMP
sudo rm 000-default.conf
sudo phpenmod mbstring
sudo a2enmod rewrite
sudo service apache2 restart
sudo rm -rf /root/.my.cnf
