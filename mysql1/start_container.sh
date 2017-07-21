#!/bin/sh
#

docker run --rm -it -d \
	--net mysql-replication \
	--ip 172.18.0.100 \
	-e MYSQL_ALLOW_EMPTY_PASSWORD=yes \
	--hostname mysql1 \
	--name mysql1 \
	mysql1
