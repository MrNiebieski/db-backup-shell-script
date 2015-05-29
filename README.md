# db-backup-shell-script #
Naive database backup script using git and crontab

mysqldump+git+crontab


##避免携程悲剧, 小型网站数据库备份方案 ##

Featuring:

* automatic backup.
* differential backup (clean interface, capable to go back to any date).
* easy to implement, cost-effective way to backup small-scale website.


特点:

* 自动增量备份, 可以回到每个备份点.

requirement:

* git


to check you have `git` installed on your server:

    git --version


This tutorial features MySQL, but should be easily ported to other databases.

##整体思路:##

* 定时任务cron job配合mysqldump导出数据
* 输出覆盖到同一个文件, 通过git实现增量备份和回滚



STEP 1:

use this file to edit `MySQL` login info so you don't need to write it explicitly in your shell command.

    $ vim ~/.my.cnf

click [here](./.my.cnf) for sample `.my.cnf` file

    $ chmod 600 ~/.my.cnf

STEP 2:

    $ git init
    $ git add -A
    $ git commit -m "init commit"


STEP 3:

    $ mkdir db_backup
    $ cd db_backup
    $ vim backup_script.sh

click [here](./backup_script.sh) for sample `backup_script.sh` file

    $ chmod 700 backup_script.sh
    $ git add backup_script.sh
    $ git commit -m "add backup script"