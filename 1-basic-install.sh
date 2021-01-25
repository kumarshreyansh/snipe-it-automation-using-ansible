#!/bin/bash

sudo apt install tasksel -y
sudo tasksel install lamp-server

sudo bash -c "echo -e '<?php\nphpinfo();\n?>' > /var/www/html/phpinfo.php"
