#!/bin/bash

mysql --user=appli_web --password=appli_web appli_web < fulldump-output.sql
