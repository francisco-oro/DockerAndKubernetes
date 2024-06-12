FROM php:zts-alpine3.20

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql