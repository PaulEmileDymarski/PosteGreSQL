#!/bin/bash

if [ ! -d "/SaveFolder" ] ;then
mkdir /home/SaveFolder
fi

echo "Entrez le nom de la sauvegarde (sans l'extention)"
read FileName
echo "Entrez le nom de la base de donnée à sauvegarder"
read DBAname
mysqldump -u appli_web -p $DBAname | gzip -c > /home/SaveFolder/$FileName.gz 
