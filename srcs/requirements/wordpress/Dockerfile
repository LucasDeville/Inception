FROM debian:buster

RUN apt update -y
RUN apt upgrade -y
RUN apt-get install wget -y
RUN apt-get install -y php7.3 php-fpm php-mysql mariadb-client curl

COPY ./conf/config.sh /
COPY ./conf/wp-config.php /

RUN chmod 755 /config.sh
RUN chmod 755 /wp-config.php

EXPOSE 9000

CMD [ "/config.sh" ]