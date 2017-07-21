# mysql replication master and slave containers
mysql master and slave docker containers.  edit the start_container.sh scripts, build the image, and start the containers for a working replication environment<br />
<br />
### installation
download the files<br />
git clone https://github.com/danradom/docker-mysql-replication mysql-replication<br />
<br />
change to the mysql-replication directory and start the network<br />
./start_network.sh<br />
<br />
change to the mysql1 directory and edit the start_container.sh changing the two paths to the mysql-replication directory<br />
```
-v /home/dr/docker/images/mysql-replication/mysql1/my_cnf/mysql1.cnf:/etc/my.cnf \
-v /home/dr/docker/images/mysql-replication/mysql1:/install \
```
build the image and start the container and connect to it<br />
```
docker build . -t mysql1<br />
./start_container.sh<br />
./connect.sh<br />
```
change to the mysql2 directory and edit the start_container.sh changing the two paths to the mysql-replication directory<br />
```
-v /home/dr/docker/images/mysql-replication/mysql2/my_cnf/mysql1.cnf:/etc/my.cnf \
-v /home/dr/docker/images/mysql-replication/mysql2:/install \
```
build the image and start the container and connect to it<br />
```
docker build . -t mysql2<br />
./start_container.sh<br />
./connect.sh<br />
```
<br />
*building the containers will take a few minutes.  once the images are built you can omit this step and simply start the containers.*<br />
<br />
### stopping the containers and network
exit the container<br />
./stop_container.sh<br />
<br />
change to the top level mysql-replication directory<br />
./stop_network.sh<br />
<br />
### configuration
there is nothing to configure<br />
<br />
mysql1 master:  172.18.0.100<br />
mysql2 slave:  172.18.0.101<br />
<br />
mysql replication user:  replicator<br />
mysql replicator user password:  replpass<br />
mysql root user password:  none<br />
