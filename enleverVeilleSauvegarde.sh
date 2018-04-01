#!/bin/bash

find /home/SaveFolder -type f -mtime +7 -exec /bin/rm -f {} \;
