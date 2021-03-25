FROM tomsowerby/php-5.3

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN apt-get install -y debian-archive-keyring && apt-key update

RUN apt-get update && apt-key update && apt-get install -y \
  zip \
  libzip-dev \
  && rm -rf /var/lib/apt/lists/*

COPY . /usr/src/dd-legacy
WORKDIR /usr/src/dd-legacy

RUN /usr/bin/composer install

CMD ["php", "./tests/test.php"]
