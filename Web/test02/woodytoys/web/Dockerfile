FROM php:8.0-apache

RUN apt-get -y update
RUN apt-get install -y vim
RUN apt-get install -y net-tools bind9 bind9utils dnsutils iputils-ping
#config apache 
COPY config-apache/apache.conf /etc/apache2/apache2.conf
#site www
#COPY www/config/www.conf /etc/apache2/sites-available/www.conf
#COPY www/log/www.log  /var/log/apache2/woodytoys-error/www.log
#COPY www/file/index.php /var/www/html/woodytoys/www/index.php
#site b2b
COPY b2b/config/b2b.conf /etc/apache2/sites-available/b2b.conf
COPY b2b/log/b2b.log  /var/log/apache2/woodytoys-error/b2b.log
COPY b2b/file/index.php /var/www/html/woodytoys/b2b/index.php

#activation des sites 
RUN a2dissite 000-default.conf
#RUN a2ensite www.conf
RUN a2ensite b2b.conf
