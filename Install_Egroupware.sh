#!/usr/bin/env bash
mkdir -p script >/dev/null
mkdir -p script/logs>/dev/null
mkdir -p script/tips>/dev/null

chmod +x Deployment_Egroupware/1_Install_Egroupware.sh
chmod +x Deployment_Egroupware/2_Install_App_Wiki.sh


./Deployment_Egroupware/1_Install_Egroupware.sh
./Deployment_Egroupware/2_Install_App_Wiki.sh