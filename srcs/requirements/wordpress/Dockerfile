FROM  debian:bookworm

RUN apt update -y && apt upgrade -y &&\
    apt install -y  php-fpm  php-mysql curl mariadb-client sendmail \
    && sed -i "s|listen = /run/php/php8.2-fpm.sock|listen = 0.0.0.0:9000|g" /etc/php/8.2/fpm/pool.d/www.conf

COPY ./conf/setup.sh /

RUN mkdir -p /run/php/

ENTRYPOINT ["sh", "setup.sh"]

CMD ["php-fpm8.2", "-F"]