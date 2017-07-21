# mysql replication master and slave containers
# installation
<br />
 download the files<br />
git clone https://github.com/danradom/docker-mysql-replication mysql-replication<br />
<br />
<br />
change to the mysql-replication directory and start the network<br />
./start_network.sh<br />
<br />
<br />
change to the mysql1 directory and build the image and start the container and connect to it<br />
docker build . -t mysql1<br />
./start_container.sh<br />
./connect.sh<br />
<br />
<br />
change to the mysql2 directory and build the image and start the container and connect to it<br />
docker build . -t mysql2<br />
./start_container.sh<br />
./connect.sh<br />
<br />
<br />
# configuration
<br />
the mysql1 master ip is 172.18.0.100<br />
the mysql2 slave ip is 172.18.0.101<br />
<br />
<br />
the mysql replication use is replicator and the password is replpass<br />
<br />
there is no mysql root password\
