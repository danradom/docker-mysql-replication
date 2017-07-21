#!/bin/sh
#

file=$(mysql -h172.18.0.100 -u replicator -preplpass --batch -e "show master status\G" |grep File |awk '{print $2}')
pos=$(mysql -h172.18.0.100 -u replicator -preplpass --batch -e "show master status\G" |grep Position |awk '{print $2}')

mysql --protocol=socket -uroot -hlocalhost --socket=/var/lib/mysql/mysql.sock -e "change master to master_host='172.18.0.100', master_user='replicator', master_password='replpass', master_log_file='$file', master_log_pos=$pos"
mysql --protocol=socket -uroot -hlocalhost --socket=/var/lib/mysql/mysql.sock -e "start slave;"
