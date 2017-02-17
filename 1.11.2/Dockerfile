FROM php:5.6-apache
MAINTAINER Maciel Escudero Bombonato <maciel.bombonato@gmail.com>

# Update OS and install basic PHP stuff
RUN apt-get -y update
RUN apt-get install -y apt-utils
RUN apt-get install -y curl
RUN apt-get install -y git
RUN apt-get install -y php5-cli
RUN apt-get install -y php5-curl
RUN apt-get install -y libpng-dev
RUN apt-get install -y php5-gd
RUN docker-php-ext-install gd
RUN apt-get install -y php5-intl
RUN apt-get install -y php5-mysql
RUN docker-php-ext-install mysql
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo
RUN docker-php-ext-install pdo_mysql
RUN apt-get install -y wget
RUN apt-get install -y sendmail

# Get Chamilo
RUN mkdir -p /var/www
#ADD https://github.com/chamilo/chamilo-lms/releases/download/v1.11.2/chamilo-lms-1.11.2.tar.gz /var/chamilo/chamilo.tar.gz
ADD 1.11.2/chamilo-lms-1.11.2 /var/www

#WORKDIR /var
#RUN tar zxf chamilo.tar.gz;rm chamilo.tar.gz;mv chamilo* www
WORKDIR /var/www
RUN chown -R www-data:www-data \
  app \
  main/default_course_document/images \
  main/lang \
  vendor \
  web

WORKDIR /root
#RUN curl -sS https://getcomposer.org/installer | php
#RUN chmod +x composer.phar
#RUN mv composer.phar /usr/local/bin/composer

#RUN git clone https://github.com/chamilo/chash.git chash
#ADD chash chash
#WORKDIR chash
#RUN composer update --no-dev
#RUN php -d phar.readonly=0 createPhar.php
#RUN chmod +x chash.phar && mv chash.phar /usr/local/bin/chash

ADD chamilo.conf /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite
RUN /etc/init.d/apache2 restart
RUN echo "127.0.0.1 docker.chamilo.net" >> /etc/hosts

WORKDIR /var/www

EXPOSE 80

RUN apt-get clean all
