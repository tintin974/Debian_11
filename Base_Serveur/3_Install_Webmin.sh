#!/usr/bin/env bash
cat <<EOF
*********************************************************************
*                     Installation de WEBMIN                        *
*********************************************************************
EOF
wget -qO - http://www.webmin.com/jcameron-key.asc | sudo apt-key add - 
sudo sh -c 'echo "deb http://download.webmin.com/download/repository sarge contrib" > \
/etc/apt/sources.list.d/webmin.list' 
sudo apt-get update
sudo apt-get install -y webmin
echo "========================="
echo "  Installation Terminée  "
echo "========================="
sleep 4
clear
