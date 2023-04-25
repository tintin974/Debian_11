#!/bin/bash
#
FolderAppli=/home/www/appli
FolderData=/home/www/Data/egroupware

sudo apt install -y curl php-cli php-mbstring git unzip
sudo apt install -y php8.2-apcu php8.2-tidy

cd ~
sudo curl -sS https://getcomposer.org/installer -o composer-setup.php
HASH=`curl -sS https://composer.github.io/installer.sig`
sudo php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer



sudo mkdir -p $FolderAppli
sudo mkdir -p $FolderData
sudo cd $FolderAppli
sudo git clone https://github.com/EGroupware/egroupware.git
sudo cd egroupware

sudo ./install-cli.php


sudo git clone https://github.com/EGroupware/phpbrain
sudo git clone https://github.com/EGroupware/phpgwapi
sudo git clone https://github.com/EGroupware/wiki
sudo mkdir -p /var/lib/egroupware/default/files
sudo mkdir -p /var/lib/egroupware/default/backup

sudo mkdir -p $FolderData/default/files
sudo mkdir -p $FolderData/backup

sudo chown -R www-data:www-data /home/www

sudo apt update && sudo apt install coolwsd code-brand