FROM php:8.5-apache

WORKDIR /var/www/html

COPY app /var/www/html

EXPOSE 80
