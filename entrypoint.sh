#!/bin/bash

#Create Data Base
mysql -h $DB_HOST -u$DB_USER -p$DB_PASS -e "CREATE DATABASE ${DB_NAME}"
echo ==========>> $DB_NAME was created

#Restore sql File
echo ==========>> Migrating sql file, wait.
mysql -h $DB_HOST -u$DB_USER -p$DB_PASS $DB_NAME < /home/db/*.sql
echo ==========>> Done
