# Dockerfile
# Use the official PHP-Apache image
FROM php:7.4-apache

# Copy the project files into the Apache root directory
COPY ./stufeems /var/www/html/

# Install necessary PHP extensions for MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Set permissions for Apache
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html

# Expose port 80 for Apache
EXPOSE 80

# Start the Apache server
CMD ["apache2-foreground"]
