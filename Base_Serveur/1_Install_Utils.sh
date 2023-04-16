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
echo "Installation Utilitaire"
apt-get install -y mc gnupg2 sudo curl
sudo apt install -y lsb-release ca-certificates apt-transport-https software-properties-common
echo "========================="
echo "  Installation Terminée  "
echo "========================="
sleep 4
clear
