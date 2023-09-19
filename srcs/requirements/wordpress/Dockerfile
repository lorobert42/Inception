FROM debian:bullseye

EXPOSE 9000

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    php7.4 \
    php7.4-mysql \
    php7.4-fpm \
    mariadb-client \
    curl \
&& rm -rf /var/lib/apt/lists/*

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp-cli.phar

COPY conf/www.conf /etc/php/8.2/fpm/pool.d/www.conf

RUN useradd -rm -d /home/wordpress -s /bin/bash wordpress
RUN mkdir -p /var/www/wordpress && chown wordpress -R /var/www/wordpress

COPY conf/wordpress.sh /scripts/wordpress.sh
RUN chmod +x /scripts/wordpress.sh

WORKDIR /var/www/wordpress

CMD [ "bash", "-c", "/scripts/wordpress.sh" ]