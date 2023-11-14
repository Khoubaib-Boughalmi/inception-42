#!/bin/sh

if [ -f "/var/www/wordpress/wp-config.php" ]
then 
    echo "exist"
else

curl -o /usr/local/bin/WPCLI https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x /usr/local/bin/WPCLI 

mkdir -p /var/www/wordpress

cd /var/www/wordpress

rm -rf *

WPCLI core download --allow-root

WPCLI config create --allow-root --dbname=${SQL_DATABASE} --dbuser=${SQL_USER} --dbpass=${SQL_PASSWORD} --dbhost=${DATABASE_HOST}

WPCLI core install --url=${WORDPRESS_URL} --title=${SITE_TITLE} --admin_user=${ADMIN_USER} --admin_password=${ADMIN_PASSWORD} --admin_email=${ADMIN_EMAIL} --allow-root

WPCLI user create ${SECOND_USER_LOGIN} ${SECOND_USER_MAIL} --role=author  --user_pass=${SECOND_USER_PASS} --path=/var/www/wordpress --allow-root

chmod -R 755 /var/www/wordpress/
chown -R www-data:www-data /var/www/wordpress/

fi

exec "$@"