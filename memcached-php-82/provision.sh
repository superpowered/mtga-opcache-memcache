#!/usr/bin/env bash

# Download memcached
echo " * Checking for memcached"
if [[ ! -f "/usr/bin/memcached" ]]; then
	echo -e " * Downloading memcached, see https://www.php.net/manual/en/book.memcached.php"
	sudo apt-get install memcached
	sudo apt-get install php-memcached
  sudo systemctl restart php8.2-fpm
else
	echo " * memcached already installed."
fi