FROM php:5.6-apache

MAINTAINER Gabriel Ignisca <gabriel@designjunkie.com>

ENV REFRESHED_AT 2015-03-21

RUN curl -L -o v.2.5.4.tar.gz https://github.com/Codiad/Codiad/archive/v.2.5.4.tar.gz
RUN tar zxf v.2.5.4.tar.gz
RUN cp -R Codiad-v.2.5.4/* /var/www/html/
RUN rm -rf v.2.5.4.tar.gz Codiad-v.2.5.4
RUN chown -R www-data:www-data /var/www/html

