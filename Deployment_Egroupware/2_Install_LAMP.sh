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
echo "Installation de la PILE LAMP">script/logs/LAMP.log
echo "+---------------------------------+"
echo "|    Installation -> Apache2.4    |"
echo "+---------------------------------+"
echo "--Installation -> Apache2.4">>script/logs/LAMP.log
apt-get install -y apache2>>script/logs/LAMP.log
echo "+---------------------------------+"
echo "|  Installation -> MySQL MariaDB  |"
echo "+---------------------------------+"
echo "--Installation -> MySQL MariaDB">>script/logs/LAMP.log
apt-get install -y mariadb-server>>script/logs/LAMP.log
echo "+---------------------------------+"
echo "|      Sécurisation de MySQL      |"
echo "+---------------------------------+"
sudo mysql_secure_installation

echo "+----------------------------------+"
echo "|       Installation PHP 7.4       |"
echo "+----------------------------------+"
sudo apt install -y php7.4>>script/logs/LAMP.log
sudo apt install -y php7.4-{bcmath,posix,pdo,xmlreader,xmlwriter,fpm,xml,mysql,zip,intl,ldap,gd,cli,bz2,curl,mbstring,pgsql,opcache,pear,soap,cgi}>>script/logs/LAMP.log
sudo apt install -y apache2-utils mariadb-client libapache2-mod-php>>script/logs/LAMP.log
echo "========================="
echo "  Installation Terminée  "
echo "========================="
sleep 4
clear
