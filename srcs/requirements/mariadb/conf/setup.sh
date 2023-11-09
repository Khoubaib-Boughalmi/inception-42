#!/bin/bash

export SQL_DATABASE=inception
export SQL_USER=inception_user
export SQL_PASSWORD=inception_pass
export SQL_ROOT_PASSWORD=rootpass

#start my sql service
service mysql start;

# Add a delay to ensure the MySQL service is fully started
sleep 5

mysql -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"

mysql -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"

mysql -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"

mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"

# relode DB
mysql -e "FLUSH PRIVILEGES;"

# restart mysql so that changes get applied
mysqladmin -u root -p $SQL_ROOT_PASSWORD shutdown

exec mysqld_safe




