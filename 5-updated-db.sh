#!/bin/bash

if [ -f /root/.my.cnf ]; then
dbname='snipenew'
charset='utf8'
	echo "Creating new MySQL database..."
	mysql -e "CREATE DATABASE ${dbname} /*\!40100 DEFAULT CHARACTER SET ${charset} */;"
	echo "Database successfully created!"
	echo "Showing existing databases..."
	mysql -e "show databases;"
	echo ""
username='snipe_usernew'
userpass='1234'
	echo "Creating new user..."
	mysql -e "CREATE USER ${username}@localhost IDENTIFIED BY '${userpass}';"
	echo "User successfully created!"
	echo ""
	echo "Granting ALL privileges on ${dbname} to ${username}!"
	mysql -e "GRANT ALL PRIVILEGES ON ${dbname}.* TO '${username}'@'localhost';"
	mysql -e "FLUSH PRIVILEGES;"
	echo "You're good now :)"
	exit
	
else
sudo cp .my.cnf /root/
dbname='snipenew'
charset='utf8'
        echo "Creating new MySQL database..."
        mysql -e "CREATE DATABASE ${dbname} /*\!40100 DEFAULT CHARACTER SET ${charset} */;"
        echo "Database successfully created!"
        echo "Showing existing databases..."
        mysql -e "show databases;"
        echo ""
        echo "Please enter the NAME of the new MySQL database user! (example: user1)"
username='snipe_usernew'
userpass='1234'
        echo "Creating new user..."
        mysql -e "CREATE USER ${username}@localhost IDENTIFIED BY '${userpass}';"
        echo "User successfully created!"
        echo ""
        echo "Granting ALL privileges on ${dbname} to ${username}!"
        mysql -e "GRANT ALL PRIVILEGES ON ${dbname}.* TO '${username}'@'localhost';"
        mysql -e "FLUSH PRIVILEGES;"
        echo "You're good now :)"
        exit

fi
