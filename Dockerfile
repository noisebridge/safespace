FROM php:8.5-fpm-alpine

WORKDIR /var/www/html

COPY app .

EXPOSE 9000

COPY safespace.conf /usr/local/etc/php-fpm.d/zzz-safespace.conf
