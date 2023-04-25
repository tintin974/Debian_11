#!/usr/bin/env bash
cat <<EOF

*********************************************************************
*                     Installation Egroupware                       *
*********************************************************************
EOF
echo 'deb http://download.opensuse.org/repositories/server:/eGroupWare/Debian_11/ /' | sudo tee /etc/apt/sources.list.d/server:eGroupWare.list
curl -fsSL https://download.opensuse.org/repositories/server:eGroupWare/Debian_11/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/server_eGroupWare.gpg
sudo apt-get update
sudo apt-get install -y egroupware-docker >script/logs/Egroupware.logs
cat /var/lib/egroupware/egroupware-docker-install.log >script/tips/Egroupware_Config.Tips
echo "========================="
echo "  Installation Terminée  "
echo "========================="
sleep 2
clear
