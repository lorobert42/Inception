FROM debian:trixie

RUN apt-get update && apt-get install -y \
    php8.2 \
    php8.2-mysql \
    mariadb-client \
    curl \
&& rm -rf /var/lib/apt/lists/*

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp-cli.phar

RUN useradd -rm -d /home/wordpress -s /bin/bash wordpress
RUN mkdir -p /var/www/wordpress && chown wordpress -R /var/www/wordpress
USER wordpress
RUN wp core download \
    --path=/var/www/wordpress
RUN wp config create \
    --dbname=$SQL_DATABASE \
    --dbuser=$SQL_USER \
    --dbpass=$SQL_PASSWORD \
    --dbhost=mariadb:3306 \
    --path=/var/www/wordpress
RUN wp core install \
    --url=lorobert.42.fr \
    --title=lorobert \
    --admin_user=$WP_USER \
    --admin_password=WP_PASSWORD \
    --admin_email=wordpress@lorobert.42.fr \
    --path=/var/www/wordpress