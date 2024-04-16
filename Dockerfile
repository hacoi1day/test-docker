FROM php:8-fpm

WORKDIR /var/www/html

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN install-php-extensions pdo pdo_mysql

# Arguments defined in docker-compose.yml
# ARG user
# ARG uid

# RUN useradd -G www-data,root -u $uid -d /home/$user $user

# USER $user
