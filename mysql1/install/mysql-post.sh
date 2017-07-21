#!/bin/sh
#


mysql --protocol=socket -uroot -hlocalhost --socket=/var/lib/mysql/mysql.sock -e "create user 'replicator'@'172.18.0.101' identified by 'replpass';"
mysql --protocol=socket -uroot -hlocalhost --socket=/var/lib/mysql/mysql.sock -e "grant replication slave, replication client on *.* to 'replicator'@'172.18.0.101';"
