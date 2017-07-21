#!/bin/sh
#

docker run --rm -it -d \
	--net mysql-replication \
	--ip 172.18.0.101 \
	-e MYSQL_ALLOW_EMPTY_PASSWORD=yes \
	--hostname mysql2 \
	--name mysql2 \
	mysql2
