# Docker Compose Web stack
Based on the Docker images, built to be fast, small and extendable web stack.

## Stack
* [PHP-FPM](https://github.com/ahomy/alpine-php_fpm)
* [Apache2 with MPM mode](https://github.com/ahomy/alpine-apache)
* [NGINX](https://github.com/ahomy/alpine-nginx)
* [Node.js](https://github.com/nodejs/docker-node)
* [MailHog](https://github.com/mailhog/MailHog)
* [NGROK](https://github.com/ahomy/alpine-ngrok)
* [Solr](https://github.com/docker-solr/docker-solr)
* [PhpMyAdmin](https://github.com/phpmyadmin/docker)
* [Adminer](https://github.com/TimWolla/docker-adminer)
* [MySQL](https://github.com/docker-library/mysql)
* [PostgreSQL](https://github.com/docker-library/postgres)
* [MongoDB](https://github.com/docker-library/mongo)
* [Redis](https://github.com/docker-library/redis)
* [Memcached](https://github.com/docker-library/memcached)
* [StandaloneFirefoxDebug](https://github.com/SeleniumHQ/docker-selenium/tree/master/StandaloneFirefoxDebug)


The web stack consists of the following containers:

| Container | Versions | Service name | Image | Enabled by default |
| --------- | -------- | ------------ | ----- | ------------------ |
| PHP-FPM                   | php-7, php-5       | php-fpm     | [akhomy/alpine-php_fpm]                     | ✓ |
| Apache                    | latest             | apache2_mpm | [akhomy/alpine-apache]                      | ✓ |
| Nginx                     | latest             | nginx       | [akhomy/alpine-nginx]                       | ✓ |
| Node.js                   | node:alpine        | node        | [node]                                       |   |
| Mailhog                   | latest             | mailhog     | [mailhog/mailhog]                            | ✓ |
| NGROK                     | latest             | ngrok       | [akhomy/alpine-ngrok]                       | ✓ |
| Solr                      | 6-alpine           | solr        | [solr]                                       |   |
| PhpMyAdmin                | latest             | phpmyadmin  | [phpmyadmin/phpmyadmin]                      | ✓ |
| Adminer                   | latest             | adminer     | [adminer]                                    |   |
| MySQL                     | latest             | mysql       | [mysql]                                      | ✓ |
| PostgreSQL                | postgres:alpine    | postgres    | [postgres]                                   |   |
| MongoDB                   | latest             | mongo       | [mongo]                                      |   |
| Redis                     | redis:alpine       | redis       | [redis]                                      |   |
| Memcached                 | memcached:alpine   | memcached   | [memcached]                                  |   |
| PHP-FPM-DATA              | php-7, php-5       | php-fpm-data| [akhomy/alpine-php_fpm]                     |   |
| StandaloneFirefoxDebug    | 2.48.2             | selenium    | [selenium/standalone-firefox-debug]          |   |

## Requirements

Install [Docker](https://docs.docker.com/engine/installation) and [Docker Compose](https://docs.docker.com/compose/install).
This project is a part of [Docker Compose Stack](https://github.com/akhomy/docker-compose-stack). If you need an access
via URL, please, reffer link above and install project.

## Run
Run `docker-compose up -d`. Run `docker-compose ps` to find the PHP container.
To go inside php container run `docker exec -it --user www-data <PHP-CONTAINER-NAME> ash`.
There are specific templates for docker-sync and docker-compose. See `docker/docker-compose` and `docker/docker-sync`.
To use docker sync run `docker-sync start`. Be aware, you need correct docker-compose template and put it content into
`docker-compose.yaml`.

## Variables
You can override project settings in .env file.

## Documentation
See READMEs for more details, like environment variables for images:

* [PHP-FPM](https://github.com/ahomy/alpine-php_fpm/blob/php-7/README.md)
* [Apache2 with MPM mode](https://github.com/ahomy/alpine-apache/blob/master/README.md)
* [NGINX](https://github.com/ahomy/alpine-nginx/blob/master/README.md)
* [Node.js](https://github.com/nodejs/docker-node)
* [MailHog](https://github.com/mailhog/MailHog/blob/master/README.md)
* [NGROK](https://github.com/ahomy/alpine-ngrok/blob/master/README.md)
* [Solr](https://github.com/docker-solr/docker-solr)
* [PhpMyAdmin](https://github.com/phpmyadmin/docker)
* [Adminer](https://github.com/TimWolla/docker-adminer)
* [MySQL](https://github.com/docker-library/mysql)
* [PostgreSQL](https://github.com/docker-library/postgres)
* [MongoDB](https://github.com/docker-library/mongo)
* [Redis](https://github.com/docker-library/redis)
* [Memcached](https://github.com/docker-library/memcached)
* [StandaloneFirefoxDebug](https://github.com/SeleniumHQ/docker-selenium/tree/master/StandaloneFirefoxDebug)

## License

This project is licensed under the MIT open source license.
