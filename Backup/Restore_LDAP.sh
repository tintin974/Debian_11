#!/bin/bash
#
BACKUPDIR=/home/Backup/openldap
DATADIR=/var/lib/ldap
LOGFILE=/home/Backup/ldap-Restore.log
ROOTSUFFIX=example-com
#
echo "--------------------------"
echo "   Restauration du LDAP   "
echo "--------------------------"
echo "     Arrêt du service     "
echo "--------------------------"
systemctl stop slapd
sleep 5
echo "     Conf du Service      "
echo "         En Cours         "
echo "--------------------------"
mv -f /etc/ldap /etc/openldap-Distrib
mkdir -p /etc/ldap
cd /etc/ldap
tar xvf $BACKUPDIR/ldap-etc.tar  &>>$LOGFILE
echo "        Data-Base         "
echo "         En Cours         "
echo "--------------------------"
mkdir -p $DATADIR
cd $DATADIR
tar xvf $BACKUPDIR/ldap-Data.tar &>>$LOGFILE
echo "   Démarrage du Service   "
echo "--------------------------"
chown -R openldap:openldap /etc/ldap
chown -R openldap:openldap /var/lib/ldap
systemctl start slapd
