#!/usr/bin/env bash
mkdir -p script >/dev/null
mkdir -p script/logs>/dev/null
mkdir -p script/tips>/dev/null
chmod +x /Base_Serveur/1_Install_Utils.sh
chmod +x /Base_Serveur/2_Install_LAMP.sh
chmod +x /Base_Serveur/3_Install_Webmin.sh
chmod +x /Base_Serveur/4_Install_LDAP.sh

./Base_Serveur/1_Install_Utils.sh
./Base_Serveur/2_Install_LAMP.sh
./Base_Serveur/3_Install_Webmin.sh
./Base_Serveur/4_Install_LDAP.sh

