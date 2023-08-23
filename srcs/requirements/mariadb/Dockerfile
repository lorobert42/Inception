FROM debian:trixie

EXPOSE 3306

RUN apt-get update && apt-get install -y \
    mariadb-server \
&& rm -rf /var/lib/apt/lists/*

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY conf/config.sql /scripts/config.sql

USER mysql

ENTRYPOINT [ "mysqld", "--init-file", "/scripts/config.sql" ]