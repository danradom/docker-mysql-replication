#!/bin/sh
#

docker run --rm -it -d \
	--net mysql-replication \
	--ip 172.18.0.100 \
	-e MYSQL_ALLOW_EMPTY_PASSWORD \
	-v /home/dr/docker/images/mysql-replication/mysql1/my_cnf/mysql1.cnf:/etc/my.cnf \
	-v /home/dr/docker/images/mysql-replication/mysql1:/install \
	--hostname mysql1 \
	--name mysql1 \
	mysql1
