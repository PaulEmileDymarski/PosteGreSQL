#!/bin/bash
if [ ! -d "/home/SaveFolder" ] ;then
mkdir /home/SaveFolder
fi

echo "Entrez le nom du fichier à back up"
read FileName
echo "Entrez le nom de la base a restaurer"
read DBAname
gzip -d /home/SaveFolder/$FileName.gz
mysql --user=root --password=password $DBAname < /home/SaveFolder/$FileName
gzip /home/SaveFolder/$FileName
