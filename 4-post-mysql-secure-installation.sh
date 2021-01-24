#!/bin/bash
sudo sed '/\!includedir \/etc\/mysql\/mysql.conf.d/a [mysqld]\' -i /etc/mysql/my.cnf
sudo sed '/\[mysqld\]/a default-authentication-plugin=mysql_native_password\' -i /etc/mysql/my.cnf
