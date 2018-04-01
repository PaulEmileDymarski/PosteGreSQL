#!/bin/bash

mysql


find /SaveFolder/* -type f -mtime +7 -exec /bin/rm -f {} \;