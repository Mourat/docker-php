# Базовый образ с PHP
FROM php:fpm-alpine

# Установка расширений PHP
RUN docker-php-ext-install pdo_mysql

# Копирование исходного кода приложения в контейнер
COPY src/ /var/www/html

# Порт, который будет прослушиваться веб-сервером PHP
EXPOSE 8000

# Запуск веб-сервера PHP
CMD ["php", "-S", "0.0.0.0:8000", "-t", "/var/www/html"]
