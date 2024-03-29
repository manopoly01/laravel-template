FROM php:8.3-fpm

# Set user and uid as build arguments
ARG user
ARG uid

# Install required dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    gnupg \
    zip \
    unzip \
    nodejs \
    npm

# Clean up package cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Create a new user and set up the home directory for the user
RUN useradd -G www-data,root -u $uid -d /home/$user $user
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user

# Display Node.js and npm versions
RUN node -v
RUN npm -v

# Set the working directory
WORKDIR /var/www

EXPOSE 5173

# Switch to the newly created user
USER $user
