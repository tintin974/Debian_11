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
echo "|       Installation PHP 7.4       |"
echo "+----------------------------------+"
sudo apt install -y php7.4
sudo apt install -y php7.4-{bcmath,common,posix,pdo,xmlreader,xmlwriter,fpm,xml,mysql,zip,intl,ldap,gd,cli,bz2,curl,mbstring,pgsql,opcache,pear,soap,cgi
sudo apt install -y apache2-utils mariadb-client libapache2-mod-php
echo "========================="
echo "  Installation Terminée  "
echo "========================="
sleep 4
clear
