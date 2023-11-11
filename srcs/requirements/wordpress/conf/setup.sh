#!/bin/sh

#sql configuration
# SQL_DATABASE=inception
# SQL_USER=inception_user
# SQL_PASSWORD=inception_pass
# SQL_ROOT_PASSWORD=rootpass

#wordpress configuration
# SITE_TITLE=inception
# ADMIN_USER=Admin
# ADMIN_PASSWORD=Admin_pass
# ADMIN_EMAIL=Admin@gmail.com

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

# WPCLI user create ${WORDPRESS_USER_NAME} ${WORDPRESS_USER_EMAIL} --role=author  --user_pass=${WORDPRESS_USER_PASSWORD} --path=/var/www/wordpress --allow-root

fi

exec "$@"