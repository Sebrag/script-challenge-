#SCRIPT-CHALLENGE LINUX

#!/bin/bash

#Validação de SO
test -f /etc/redhat-release
if [ $? != "0" ]; then
	echo "ERRO: Sistema Operacional incorreto"
	sleep 1
	exit
fi

#Validação de HTTPD
test -d /etc/httpd/
if [ $? != "0" ]; then
	echo "ERRO: Diretório HTTPD não encontrado"
	sleep 1
	exit
fi

#Validação de usuario
if [ "$(id -u -r)" != "0" ]; then
	echo "ERRO: Executar com permissão administrativa"
	sleep 1
	exit
fi

#Backup
DATE=$(date '+%d-%m-%y-%Hh%Mmin')

test -d /etc/backup || mkdir /etc/backup

tar -czvf "/etc/backup/bkup-$DATE.tar.gz" /etc/httpd

#Log
if [ $? == "0" ]; then
	echo "$DATE - Backup executado com sucesso" >> /var/log/backup.log
	else
	echo "$DATE - Falha na execução" >> /var/log/backup.log
fi
