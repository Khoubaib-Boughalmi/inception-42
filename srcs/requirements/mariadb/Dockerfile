FROM  debian:bookworm
 
RUN apt update -y  && apt install mariadb-server -y

RUN mkdir -p /run/mysqld && chmod 777 /run/mysqld

RUN mariadb-install-db --user=mysql --datadir=/var/lib/mysql 

COPY ./conf/setup.sh /

ENTRYPOINT ["sh", "setup.sh"]

CMD ["mariadbd", "--user=mysql", "--bind-address=0.0.0.0"]  