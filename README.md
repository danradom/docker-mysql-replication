# docker-mysql-replication

download the files<br />
git clone https://github.com/danradom/docker-mysql-replication mysql-replication<br />
<br />
<br />
cd to the mysql-replication directory run start_network.sh to start the 172.18.0.0/24 network<br />
<br />
mysql1 is the master.  its ip is 172.18.0.100<br />
mysql2 is the slave.  its ip is 172.18.0.101<br />
<br />
<br />
replicator is the replication user.  replpass is the replicaiton use password.  there is no mysql root password.<br />
<br />
<br />
cd to the mysql1 directory and build the image<br />
docker build . -t mysql1<br />
<br />
cd to the mysql2 directory and build the image<br />
docker build . -t mysql2<br />
<br />
start the master by running the start_container.sh script in the mysql1 directory<br />
<br />
start the slave by running the start_container.sh script in the mysql2 directory<br />
<br />
<br />
run the start_container.sh script to connect to the containers<br />
<br />
to stop the containers run the stop_container.sh script<br />
