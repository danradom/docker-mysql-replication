#!/bin/bash

datadir="/va/lib/mysql"

if [ ! -d "$datadir/mysql" ]; then
	mkdir -p "$datadir"
	chown -R mysql:mysql "$datadir"
	mysql_install_db --force
	mysqld --skip-networking --socket=/var/lib/mysql/mysql.sock &
	pid="$!"
	sleep 10
	mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql --protocol=socket -uroot -hlocalhost --socket=/var/lib/mysql/mysql.sock mysql
	/etc/supervisor/mysql-post.sh
	kill -s TERM "$pid"
	chown -R mysql:mysql "$datadir"
fi

mysqld --datadir=/var/lib/mysql --log-error=/var/log/mysqld.log --pid-file=/var/run/mysqld/mysql.pid --socket=/var/lib/mysql/mysql.sock
