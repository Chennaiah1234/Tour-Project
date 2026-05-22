FROM php:8.1-apache

# Enable mysqli extension
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copy project files into Apache web root
COPY . /var/www/html/

# Fix permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expose port 80
EXPOSE 80
