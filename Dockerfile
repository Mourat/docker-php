# Используем базовый образ PHP
FROM php:8.2-apache

# Установка расширения PDO MySQL
RUN docker-php-ext-install pdo_mysql


