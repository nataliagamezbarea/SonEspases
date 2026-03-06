# Crear carpeta logs con permisos adecuados
FROM php:8.2-apache

RUN mkdir -p /var/www/logs && chmod 777 /var/www/logs

# Instala mysqli
RUN docker-php-ext-install mysqli

