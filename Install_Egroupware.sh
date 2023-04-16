#!/usr/bin/env bash
mkdir -p script >/dev/null
mkdir -p script/logs>/dev/null
mkdir -p script/tips>/dev/null
chmod +x /Deployment_Egroupware/1_Install_Utils.sh
chmod +x /Deployment_Egroupware/2_Install_LAMP.sh
chmod +x /Deployment_Egroupware/3_Install_Webmin.sh
chmod +x /Deployment_Egroupware/4_Install_LDAP.sh
chmod +x /Deployment_Egroupware/5_Install_Egroupware.sh

./Deployment_Egroupware/1_Install_Utils.sh
./Deployment_Egroupware/2_Install_LAMP.sh
./Deployment_Egroupware/3_Install_Webmin.sh
./Deployment_Egroupware/4_Install_LDAP.sh
./Deployment_Egroupware/5_Install_Egroupware.sh
