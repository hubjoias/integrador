FROM gitpod/workspace-full

RUN sudo add-apt-repository ppa:ondrej/php -y && \
    sudo apt-get update && \
    sudo apt-get install -y php8.2 \
    php8.2-common \
    php8.2-mysql \
    php8.2-xml \
    php8.2-curl \
    php8.2-gd \
    php8.2-mbstring \
    php8.2-zip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
