# Базовый образ с PHP
FROM php:fpm-alpine

# Установка расширений PHP
RUN docker-php-ext-install pdo_mysql

# Запуск веб-сервера PHP
CMD ["php", "-S", "0.0.0.0:8000", "-t", "/var/www/html"]
