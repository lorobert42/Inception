FROM debian:trixie

EXPOSE 3306

RUN apt-get update && apt-get upgrade && apt-get install -y \
    mariadb-server \
&& rm -rf /var/lib/apt/lists/*

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY conf/mariadb.sh /scripts/mariadb.sh

ENTRYPOINT [ "bash", "/scripts/mariadb.sh" ]