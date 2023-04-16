#!/usr/bin/env bash
cat <<EOF

*********************************************************************
*         Installation des Pré-Requis au Serveur                    *
*             - MC    > Explorateur des Fichiers en Mode Console    *
*             - Sudo  > Mode Super-User                             *
*             - Gnupg > GNU privacy guard                           *
*             - Curl                                                *
*********************************************************************
EOF
echo "Installation Utilitaire">script/logs/Utils.log
apt-get install -y mc gnupg2 sudo curl>>script/logs/Utils.log
sudo apt install -y lsb-release ca-certificates apt-transport-https software-properties-common>>script/logs/Utils.log
echo "Installation Terminée">>script/logs/Utils.log
echo "========================="
echo "  Installation Terminée  "
echo "========================="
sleep 4
clear
