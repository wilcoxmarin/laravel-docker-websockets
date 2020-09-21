FROM php:7.3-fpm
#definimos la raviable de la ruta
ENV WORKDIR /var/www
# directorio a trabajar
WORKDIR ${WORKDIR}/
# Instalamos dependencias
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    unzip \
    jpegoptim optipng pngquant gifsicle \
    vim

RUN apt-get update && apt-get install -y --no-install-recommends \
    unzip \
    zlib1g-dev \
    libzip-dev \
    && docker-php-ext-install zip \
    && docker-php-source delete
# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
# Instalamos las extensiones
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd
# Instalamos composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
#copiamos los archivos
COPY composer.* ${WORKDIR}/
#copiar el proyecto en el directorio
COPY . ${WORKDIR}/
RUN composer install --dev
#damos permisos
RUN chmod -R 777 ${WORKDIR}/storage && \
    chmod -R 777 ${WORKDIR}/bootstrap/cache
#exponemos el puerto 9000
EXPOSE 9000
CMD ["php-fpm"]
