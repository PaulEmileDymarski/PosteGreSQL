#!/bin/bash

 
echo "Entrez le nom du fichier � Back Up (sans l'extention)"
read FileBackUp
gzip -d /SaveFolder/$FileBackUp.gz
mysql --user=appli_web --password=appli_web appli_web < /SaveFolder/$FileBackUp
gzip /SaveFolder/$FileBackUp 


