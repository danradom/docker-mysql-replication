#!/bin/sh
#

mysql -e "change master to master_host='172.18.0.100', master_user='replicator', master_password='replpass', master_log_file='mysqld-bin.000003', master_log_pos=107;"
mysql -e "start slave;"
