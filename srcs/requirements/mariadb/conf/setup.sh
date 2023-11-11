# export SQL_DATABASE=inception
# export SQL_USER=inception_user
# export SQL_PASSWORD=inception_pass
# export SQL_ROOT_PASSWORD=rootpass
#!/bin/sh

if [ -d  "/var/lib/mysql/${SQL_DATABASE}" ]
then 
    echo "exist"
else

    echo "FLUSH PRIVILEGES;" >> /tmp/db.sql
    echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';" >> /tmp/db.sql
    echo "CREATE DATABASE ${SQL_DATABASE};" >> /tmp/db.sql
    echo "CREATE USER '${SQL_USER}'@'%' IDENTIFIED BY '${SQL_PASSWORD}';" >> /tmp/db.sql
    echo "GRANT ALL PRIVILEGES ON *.* TO '${SQL_USER}'@'%' WITH GRANT OPTION;" >> /tmp/db.sql
    echo "FLUSH PRIVILEGES;" >> /tmp/db.sql
    mariadbd --user=mysql --bootstrap < /tmp/db.sql
fi
exec "$@"