
FROM php:8.2-apache

# Instalación de soporte LDAP para PHP y utilidades LDAP
RUN apt-get update && \
    apt-get install -y libldap2-dev libldap-2.5-0 libldap-common ldap-utils php-ldap && \
    docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu && \
    docker-php-ext-install mysqli ldap



# Crear carpeta logs con permisos adecuados
RUN mkdir -p /var/www/logs && chmod 777 /var/www/logs

# Copia el código fuente
COPY www/ /var/www/html/

# Configura Apache y PHP para UTF-8
RUN echo 'AddDefaultCharset UTF-8' > /etc/apache2/conf-available/charset.conf \
	&& a2enconf charset
RUN echo 'default_charset = "UTF-8"' >> /usr/local/etc/php/php.ini-production \
	&& cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini

