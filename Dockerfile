FROM php:8.1.0-fpm

# Requirement Extensions
RUN docker-php-ext-install mysqli 

# NGINX
RUN apt-get update && apt-get install nginx -y
COPY ./default.conf /etc/nginx/sites-enabled/default

# script to run on startup
COPY entrypoint.sh /etc/entrypoint.sh

EXPOSE 80 443 9000

# script to run on startup
ENTRYPOINT ["/etc/entrypoint.sh"]
