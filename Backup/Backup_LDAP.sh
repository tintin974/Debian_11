#!/bin/bash
#
BACKUPDIR=/home/Backup/openldap
DATADIR=/var/lib/ldap
LOGFILE=/home/Backup/ldap.log

mkdir -p $BACKUPDIR
date>$LOGFILE
echo "---- Sauvegarde LDAP -----" &>>$LOGFILE
echo "Sauvegarde du paramétrage" &>>$LOGFILE
cd /etc/ldap
tar cvf $BACKUPDIR/ldap-etc.tar * &>>$LOGFILE

echo "Sauvegarde des données">>$LOGFILE
#service slapd stop
# On attend que le service soit arrêté
sleep 5
cd $DATADIR
tar cvf $BACKUPDIR/ldap-Data.tar * &>>$LOGFILE
echo "Sauvegarde terminée">>$LOGFILE
chown -R administrateur:administrateur /home/Backup/>>$LOGFILE