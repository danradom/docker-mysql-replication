# mysql replication master and slave containers
mysql master and slave docker containers.  build the image and start the containers for a working replication environment<br />
<br />

### installation

download the files<br />
git clone https://github.com/danradom/docker-mysql-replication mysql-replication<br />
<br />
change to the mysql-replication directory and start the network<br />

```
./start_network.sh
```

<br />
change to the mysql1 directory<br />

build the image and start the container and connect to it<br />

```
./build.sh
./start_container.sh
./connect.sh
```

<br />
*wait about 30 seconds before proceeding.  this gives mysql enough time to come up on mysql1 before starting the mysql container.  failing to do so could result in broken replication.  if you encounter this situation simply stop and then start the mysql2 container*<br />
<br />

change to the mysql2 directory<br />

build the image and start the container and connect to it<br />

```
./build.sh
./start_container.sh
./connect.sh
```

<br />
*building the first container will take a minute or two.  the second image build will use the cached copy.  once the images are built you can omit this step and simply start the containers.*<br />
<br />
<br />
confirm replication is working by running the following from the contrainer shells.<br />

```
mysql1
mysql -e "show master status\G"

mysql2
mysql -e "show slave status\G"
```

### stopping the containers and network

exit the container<br />

```
./stop_container.sh
```

<br />
change to the top level mysql-replication directory<br />

```
./stop_network.sh
```

<br />

### database configuration


| hostname | function | ip address |
| --- |--- | --- |
| mysql1 | master | 172.18.0.100 |
| mysql2 | slave | 172.18.0.101 |

<br />

| user | host | password | host |
| --- | --- | ---| --- |
| root | localhost | | mysql1 / mysql2 |
| replicator | 172.18.0.101 | replpass | mysql1 |

<br />
*there is no mysql root user password*<br />
