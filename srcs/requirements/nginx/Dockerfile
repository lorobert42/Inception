FROM debian:trixie

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    nginx \
    openssl \
&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes \
    -out /etc/nginx/ssl/inception.crt \
    -keyout /etc/nginx/ssl/inception.key \
    -subj "/C=CH/ST=VD/L=Renens/O=42/OU=42/CN=42"

COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/wordpress.conf /etc/nginx/sites-available/default

CMD [ "nginx", "-g", "daemon off;" ]