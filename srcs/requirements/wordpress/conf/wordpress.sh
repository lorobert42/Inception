wp-cli.phar core download \
    --path=/var/www/wordpress \
    --allow-root
wp-cli.phar config create \
    --dbname=$SQL_DATABASE \
    --dbuser=$SQL_USER \
    --dbpass=$SQL_PASSWORD \
    --dbhost=mariadb:3306 \
    --path=/var/www/wordpress \
    --allow-root
wp-cli.phar core install \
    --url=https://lorobert.42.fr \
    --title=lorobert \
    --admin_user=$WP_ADMIN_USERNAME \
    --admin_password=$WP_ADMIN_PASSWORD \
    --admin_email=wordpress@lorobert.42.fr \
    --path=/var/www/wordpress \
    --allow-root
wp-cli.phar user create \
    $WP_USERNAME \
    $WP_EMAIL \
    --role=contributor \
    --user_pass=$WP_PASSWORD \
    --path=/var/www/wordpress \
    --allow-root
php-fpm7.4 --nodaemonize