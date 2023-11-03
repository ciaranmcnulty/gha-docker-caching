# syntax=docker/dockerfile:1.6
FROM php AS base
WORKDIR /app

FROM base AS composer-install
RUN apt-get update && apt-get install -y git zip
COPY --from=composer/composer:2-bin /composer /usr/bin/composer
COPY --link composer.json .
RUN composer install

FROM base AS final

COPY --link --from=composer-install /app/vendor/ ./vendor/
COPY entrypoint.php .

ENTRYPOINT ["php", "entrypoint.php"]
