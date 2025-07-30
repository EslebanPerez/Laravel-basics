FROM php:8.2-cli
# Instalar extensiones adicionales (opcional)
RUN docker-php-ext-install pdo pdo_mysql