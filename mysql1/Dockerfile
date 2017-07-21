FROM oraclelinux:7-slim

RUN rpmkeys --import http://repo.mysql.com/RPM-GPG-KEY-mysql \
	&& yum install -y libpwquality \
	&& yum install -y https://repo.mysql.com/yum/mysql-5.5-community/docker/x86_64/mysql-community-server-minimal-5.5.57-2.el7.x86_64.rpm

RUN mkdir /var/lib/mysql-init

VOLUME /var/lib/mysql
EXPOSE 3306

COPY install/bashrc /root/.bashrc
COPY install/mysql-init.sh /var/lib/mysql-init/
COPY install/mysql-post.sh /var/lib/mysql-init/
COPY install/my.cnf /etc/my.cnf

CMD ["/var/lib/mysql-init/mysql-init.sh"]
