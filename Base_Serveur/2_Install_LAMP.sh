#!/usr/bin/env bash
cat <<EOF

*********************************************************************
*         Installation de LAMP                                      *
*             - Apache 2                                            *
*             - MariaDB SQL-Serveur                                 *
*             - PHP                                                 *
*             - Curl                                                *
*********************************************************************
EOF
echo "Installation de la PILE LAMP"
echo "+---------------------------------+"
echo "|    Installation -> Apache2.4    |"
echo "+---------------------------------+"
echo "--Installation -> Apache2.4"
apt-get install -y apache2
echo "+---------------------------------+"
echo "|  Installation -> MySQL MariaDB  |"
echo "+---------------------------------+"
echo "--Installation -> MySQL MariaDB">>script/logs/LAMP.log
apt-get install -y mariadb-server
echo "+---------------------------------+"
echo "|      Sécurisation de MySQL      |"
echo "+---------------------------------+"
sudo mysql_secure_installation

echo "+----------------------------------+"
echo "|       Installation PHP 8.2       |"
echo "+----------------------------------+"
apt -y install lsb-release apt-transport-https ca-certificates 
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list
sudo apt update && apt upgrade
sudo apt install -y php8.2 -y


sudo apt install -y php8.2-{bcmath,common,posix,pdo,xmlreader,xmlwriter,fpm,xml,mysql,zip,intl,ldap,gd,cli,bz2,curl,mbstring,pgsql,opcache,soap,cgi}
sudo apt install -y apache2-utils mariadb-client libapache2-mod-php8.2
sudo a2enmod php8.2
sudo systemctl restart apache2
sudo a2enconf php8.2-fpm
sudo a2disconf php8.1-fpm
sudo a2disconf php7.4-fpm
sudo apt purge php8.1*
sudo apt purge php7.4*
echo "========================="
echo "  Installation Terminée  "
echo "========================="
sleep 4
clear
