FROM debian:buster

EXPOSE 3306

ARG DB_NAME=${SQL_DATABASE}
ARG DB_USER=${SQL_USER}
ARG DB_PASSWORD=${SQL_PASSWORD}
ARG DB_ROOT_PASSWORD=${SQL_ROOT_PASSWORD}

RUN apt-get update && apt-get install \
	mariadb-server -y && \
	rm -rf /var/lib/apt/lists/*

RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./conf/config.sh /

RUN chmod 755 /config.sh
RUN chmod 755 /etc/mysql/mariadb.conf.d/50-server.cnf
RUN bash ./config.sh

CMD ["mysqld_safe"]