# docker-mysql-replication

download the files
git clone https://github.com/danradom/docker-mysql-replication mysql-replication

cd to the mysql-replication directory run start_network.sh to start the 172.18.0.0/24 network

mysql1 is the master.  its ip is 172.18.0.100
mysql2 is the slave.  its ip is 172.18.0.101


replicator is the replication user.  replpass is the replicaiton use password.  there is no mysql root password.


cd to the mysql1 directory and build the image
- docker build . -t mysql1

cd to the mysql2 directory and build the image
- docker build . -t mysql2

start the master by running the start_container.sh script in the mysql1 directory

start the slave by running the start_container.sh script in the mysql2 directory


run the start_container.sh script to connect to the containers

to stop the containers run the stop_container.sh script
