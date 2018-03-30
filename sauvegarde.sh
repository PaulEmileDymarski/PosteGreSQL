#!/bin/bash 

mysqldump -u appli_web -p appli_web | gzip -c > output.gz 
