#!/usr/bin/env bash

# Set up opcache preload
echo " * Checking for opcache preload"
if [[ ! -f "/etc/php/8.2/fpm/conf.d/20-opcache.ini" ]]; then
  sudo touch /etc/php/8.2/fpm/conf.d/20-opcache.ini
  "opcache.enable=1" >> /etc/php/8.2/fpm/conf.d/20-opcache.ini
  "opcache.preload_user=www-data" >> /etc/php/8.2/fpm/conf.d/20-opcache.ini
  "opcache.preload=/srv/www/mtga/public_html/preload.php" >> /etc/php/8.2/fpm/conf.d/20-opcache.ini
else
	echo " * opcache preload already set up."
fi