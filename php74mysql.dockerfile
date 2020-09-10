FROM php:7.4-fpm
RUN docker-php-ext-install -j$(nproc) mysqli
RUN docker-php-ext-install -j$(nproc) pdo 
RUN docker-php-ext-install -j$(nproc) pdo_mysql
RUN apt update
RUN apt install -y zlib1g-dev libicu-dev g++ libfreetype6-dev libjpeg62-turbo-dev libpng-dev libzip-dev zip
RUN docker-php-ext-configure intl
RUN docker-php-ext-install intl
RUN docker-php-ext-install zip
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
RUN echo 'memory_limit = 512M' >> $PHP_INI_DIR/conf.d/docker-php-memmory-limit.ini;
RUN echo 'upload_max_filesize = 6M' >> $PHP_INI_DIR/conf.d/docker-php-upload-limit.ini;
