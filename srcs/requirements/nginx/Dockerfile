
From debian:bookworm-backports

RUN	apt-get update -y && \
	apt-get install -y && \
	apt-get upgrade -y && \
	apt install nginx -y && \
	apt install curl -y
 
RUN	apt-get install openssl -y

RUN	mkdir -p /etc/nginx/ssl

RUN     openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MA/ST=TET/L=TETOUAN/O=42/OU=42/CN=kboughal.42.fr/UID=kboughal" 

RUN	mkdir -p /var/run/nginx/

COPY	conf/nginx.conf /etc/nginx/nginx.conf
RUN	chmod 755 /var/www/html
RUN	chown -R www-data:www-data /var/www/html

CMD [ "nginx", "-g", "daemon off;" ]
