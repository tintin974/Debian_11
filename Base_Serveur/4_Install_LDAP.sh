#!/usr/bin/env bash
cat <<EOF

*********************************************************************
*                     Installation Serveur LDAP                     *
*********************************************************************
EOF
sudo apt-get -y install slapd ldap-utils libnet-ldap-perl
sudo apt-get -y install slapd
sudo apt-get -y -f install libconvert-asn1-perl
sudo apt -y -f install libnet-ldap-perl
sudo slapcat > script/tips/ldap_Schema.Tips
echo "========================="
echo "  Installation Terminée  "
echo "========================="
sleep 4
clear
cat <<EOF

*********************************************************************
*                     Installation LAM                              *
*********************************************************************
EOF
wget http://prdownloads.sourceforge.net/lam/ldap-account-manager_8.3-1_all.deb
sudo apt-get install -y -f ./ldap-account-manager_8.3-1_all.deb
echo "Installation Terminée"
sleep 2
