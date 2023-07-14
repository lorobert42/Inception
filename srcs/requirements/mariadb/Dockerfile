FROM debian:trixie

EXPOSE 3306

RUN apt-get update && apt-get install -y \
    mariadb-server \
&& rm -rf /var/lib/apt/lists/*

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY conf/mariadb.sh /scripts/mariadb.sh
RUN chmod +x /scripts/mariadb.sh

CMD [ "bash", "-c", "/scripts/mariadb.sh" ]