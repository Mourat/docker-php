# Базовый образ с PHP
FROM php:8.2-cli

# Копирование исходного кода приложения в контейнер
COPY src/ /var/www/html

# Порт, который будет прослушиваться веб-сервером PHP
EXPOSE 8000

# Запуск веб-сервера PHP
CMD ["php", "-S", "0.0.0.0:8000", "-t", "/var/www/html"]
