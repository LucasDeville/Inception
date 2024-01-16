FROM debian:buster

# EXPOSE 3306

RUN apt update -y
RUN apt-get install mariadb-server -y

RUN mkdir /var/run/mysqld
RUN chmod 777 -R /var/run/mysqld
RUN chmod 777 -R /var/lib/mysql
RUN chmod 777 -R /var/log/mysql
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/config.sh /

RUN chmod 755 /config.sh
RUN chmod 755 /etc/mysql/mariadb.conf.d/50-server.cnf

CMD ["/config.sh"]