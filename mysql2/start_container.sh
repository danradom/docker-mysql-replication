#!/bin/sh
#

docker run --rm -it -d \
	--net mysql-replication \
	--ip 172.18.0.101 \
	-e MYSQL_ALLOW_EMPTY_PASSWORD \
	-v /home/dr/docker/images/mysql-replication/mysql2/my_cnf/mysql2.cnf:/etc/my.cnf \
	-v /home/dr/docker/images/mysql-replication/mysql2:/install \
	--hostname mysql2 \
	--name mysql2 \
	mysql2
