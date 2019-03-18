FROM php:7.3-apache

MAINTAINER Chandler Van Scoy <chandler@chandlervanscoy.com>

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && mv composer.phar /usr/local/bin/composer \
    && apt update \
    && apt -y install git \
    && rm -rf /var/lib/apt/lists/*
