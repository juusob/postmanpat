FROM php:7.1.8-apache

MAINTAINER Juuso Saranki

COPY ./php/ /srv/app
COPY vhostconf /etc/apache2/sites-available/000-default.conf

RUN chown -R www-data:www-data /srv/app \
    && a2enmod rewrite
