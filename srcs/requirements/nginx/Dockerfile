FROM  debian:bookworm

RUN	apt update -y
RUN	apt install nginx -y

RUN	mkdir -p /etc/nginx/ssl
RUN	apt install openssl -y

RUN	openssl req -batch -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout /etc/nginx/ssl/inception.key \
	-out /etc/nginx/ssl/inception.crt \
	-subj "/C=MA/ST=TET/O=42/CN=kboughal.42.fr"

RUN	mkdir -p /var/run/nginx

COPY    conf/nginx.conf /etc/nginx/nginx.conf
COPY	conf/ssl.conf /etc/nginx/conf.d/ssl.conf

RUN	chmod 755 /var/www/html
RUN	chown -R www-data:www-data /var/www/html

# COPY	conf/html/index.html /var/www/html

CMD [ "nginx", "-g", "daemon off;" ]
