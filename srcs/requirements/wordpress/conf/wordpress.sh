wp-cli.phar core download \
    --path=/var/www/wordpress
wp-cli.phar config create \
    --dbname=$SQL_DATABASE \
    --dbuser=$SQL_USER \
    --dbpass=$SQL_PASSWORD \
    --dbhost=mariadb:3306 \
    --path=/var/www/wordpress
wp-cli.phar core install \
    --url=lorobert.42.fr \
    --title=lorobert \
    --admin_user=$WP_USER \
    --admin_password=$WP_PASSWORD \
    --admin_email=wordpress@lorobert.42.fr \
    --path=/var/www/wordpress