#!/bin/sh
mysqldump database_name > ~/db_backup/db_backup_data.sql
git commit -am "backup"