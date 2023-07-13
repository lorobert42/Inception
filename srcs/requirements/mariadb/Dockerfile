FROM debian:trixie

RUN apt-get update && apt-get install -y \
    mariadb-server \
&& rm -rf /var/lib/apt/lists/*

COPY conf/mariadb.sh /scripts/mariadb.sh
RUN chmod +x /scripts/mariadb.sh
RUN /scripts/mariadb.sh

CMD [ "mysqld_safe" ]