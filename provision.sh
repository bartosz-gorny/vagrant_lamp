#!/bin/bash

main() {
    start_update
    start_apache
	start_tools
    start_repositories
    start_update
    start_php
    start_php_modules
    start_php_check
    start_mysql
    start_autoremove
}



start_repositories() {
    add-apt-repository -y ppa:ondrej/php
}

start_update() {
    apt-get -y update
    apt-get -y upgrade
}

start_autoremove() {
    apt-get -y autoremove
}

start_apache() {
    apt-get -y install apache2
    service apache2 restart
}

start_tools() {
    apt-get -y install curl
    apt-get -y install software-properties-common
    apt-get -y install git

}

start_mysql() {
    apt-get -y install mysql-client
    apt-get -y install mysql-server
    service mysql restart
}

start_php() {
    apt-get install -y php7.4

}

start_php_modules() {
 apt-get -y install php7.4-mysql php7.4-curl php7.4-json php7.4-cgi php7.4-xsl
}

start_php_check() {
    sudo rm -rf /var/www/html/index.html
    echo "<?php phpinfo(); ?>" >> /var/www/html/index.php
}

start_autoremove() {
    apt-get -y autoremove
}

main
exit 0