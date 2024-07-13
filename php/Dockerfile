FROM php:8.2


# RUN apt-get update
# RUN apt-get install -y software-properties-common

# # RUN echo "deb http://archive.debian.org/debian stretch main" > /etc/apt/sources.list

# # RUN apt-get update


# # Installing dependencies for the PHP modules
# # RUN echo "deb http://apt.vestacp.com/bionic/ bionic vesta" > /etc/apt/sources.list.d/vesta.list
# # RUN apt-get install -y zip zlib1g libxml2 libcurl3=7.52.1-5+deb9u10 libcurl4 && apt-get install -y curl libcurl3-dev libzip-dev libpng-dev libonig-dev libxml2-dev --fix-broken
#     # libonig-dev is needed for oniguruma which is needed for mbstring

# # Installing additional PHP modules
# RUN docker-php-ext-install curl gd mbstring mysqli pdo pdo_mysql xml fpm math json

# # Install and configure ImageMagick
# RUN apt-get install -y libmagickwand-dev
# RUN pecl install imagick
# RUN docker-php-ext-enable imagick
# RUN apt-get purge -y libmagickwand-dev

# # Install Composer so it's available
# RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer