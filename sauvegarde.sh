#!/bin/bash

if [ ! -d "/SaveFolder" ] ;then
mkdir /SaveFolder
fi

echo "Entrez le nom de la sauvegarde (sans l'extention)"
read FileName
echo "Entrez le nom de la base de donn�e � sauvegarder"
read DBAname
mysqldump -u appli_web -p $DBAname | gzip -c > /SaveFolder/$FileName.gz 
