# mysql replication master and slave containers
mysql master and slave docker containers.  there is nothing to configure.  build the image and start the container for a working master / slave replicaiton setup<br />
<br />
### installation
download the files<br />
git clone https://github.com/danradom/docker-mysql-replication mysql-replication<br />
<br />
change to the mysql-replication directory and start the network<br />
./start_network.sh<br />
<br />
change to the mysql1 directory and build the image and start the container and connect to it<br />
docker build . -t mysql1<br />
./start_container.sh<br />
./connect.sh<br />
<br />
change to the mysql2 directory and build the image and start the container and connect to it<br />
docker build . -t mysql2<br />
./start_container.sh<br />
./connect.sh<br />
<br />
*building the containers will take a few minutes.  once the images are built you can omit this step and simply start the containers.*<br />
<br />
### configuration
there is nothing to configure<br />
<br />
the mysql1 master ip is 172.18.0.100<br />
the mysql2 slave ip is 172.18.0.101<br />
<br />
the mysql replication use is replicator and the password is replpass<br />
there is no mysql root password<br />
<br />
### stopping the containers and network
exit the container<br />
./stop_container.sh<br />
<br />
change to the top level mysql-replication directory<br />
./stop_network.sh
