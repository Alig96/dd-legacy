FROM php:7.0-cli

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN apt-get update && apt-get install -y \
  zip \
  libzip-dev \
  && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-configure zip --with-libzip && docker-php-ext-install zip

COPY . /usr/src/dd-legacy
WORKDIR /usr/src/dd-legacy

RUN /usr/bin/composer install

CMD ["php", "./tests/test.php"]
