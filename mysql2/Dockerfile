FROM oraclelinux:7-slim

COPY install/get-pip.py /root

RUN rpmkeys --import http://repo.mysql.com/RPM-GPG-KEY-mysql \
	&& yum install -y libpwquality \
	&& yum install -y https://repo.mysql.com/yum/mysql-5.5-community/docker/x86_64/mysql-community-server-minimal-5.5.57-2.el7.x86_64.rpm \
	&& yum install -y net-tools \
	&& yum install -y iputils \
	&& yum install -y procps-ng \
	&& yum install -y wget \
	&& python /root/get-pip.py \
	&& pip install supervisor

VOLUME /var/lib/mysql
EXPOSE 3306

COPY install/* /etc/supervisor/
COPY install/bashrc /root/.bashrc

ENTRYPOINT ["/usr/bin/supervisord","-c","/etc/supervisor/supervisord.conf"]
