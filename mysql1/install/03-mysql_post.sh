#!/bin/sh
#


mysql -e "create user 'replicator'@'172.18.0.100' identified by 'replpass';"
mysql -e "create user 'replicator'@'172.18.0.101' identified by 'replpass';"
mysql -e "grant replication slave, replication client on *.* to 'replicator'@'172.18.0.100';"
mysql -e "grant replication slave, replication client on *.* to 'replicator'@'172.18.0.101';"
