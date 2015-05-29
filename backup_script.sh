#!/bin/sh
mysqldump database_name > ~/db_backup/db_backup_data.sql
git add .
git commit -m "backup"