# Docker-based LAMP stack
Based on the docker Alpine image, built to be fast, small and extendable LAMP stack.

## Stack
* [MariaDB](https://github.com/docker-library/mariadb)
* [PhpMyAdmin](https://github.com/phpmyadmin/phpmyadmin)
* [PHP-FPM](https://github.com/a-kom/alpine-php_fpm)
* [NGINX](https://github.com/a-kom/alpine-nginx)
* [Apache2 with MPM mode](https://github.com/a-kom/alpine-apache)
* [MailHog](https://github.com/a-kom/alpine-mailhog)
* [StandaloneFirefoxDebug](https://github.com/SeleniumHQ/docker-selenium/tree/master/StandaloneFirefoxDebug)
* [Node.js](https://github.com/nodejs/docker-node/blob/c044d61e6d02756bb8ed1557b2f0c7a0d7fead6f/8.4/alpine/Dockerfile)

The LAMP stack consists of the following containers:

| Container | Versions | Service name | Image | Enabled by default |
| --------- | -------- | ------------ | ----- | ------------------ |
| MariaDB                   | 10.0               | mariadb   | [mariadb]                                    | ✓ |
| PhpMyAdmin                | latest             | pma       | [phpmyadmin/phpmyadmin]                      | ✓ |
| PHP-FPM                   | php-7, php-5       | php       | [lordius/alpine-php_fpm]                     | ✓ |
| Apache                    | latest             | apache    | [lordius/alpine-apache]                      | ✓ |
| Nginx                     | latest             | nginx     | [lordius/alpine-nginx]                       | ✓ |
| Mailhog                   | latest             | mailhog   | [lordius/alpine-mailhog]                     | ✓ |
| NGROK                     | latest             | ngrok     | [lordius/alpine-ngrok]                       | ✓ |
| PHP-FPM-DATA              | php-7, php-5       | php-fpm   | [lordius//alpine-php_fpm]                    |   |
| StandaloneFirefoxDebug    | 2.48.2             | selenium  | [selenium/standalone-firefox-debug]          |   |
| Node.js                   | node:8.4.0-alpine  | node      | [node]                                       |   |

## Requirements
Install Docker (Linux, Docker for Mac or Docker for Windows (10+ Pro)). For Linux additionally install docker compose.

##  Introduction
Run inside folder with **docker-compose.yml**: `docker-compose up -d`

To view **PHP** info with **NGINX** use a link or IP: **http://locahost:8005/info.php**, **http://172.55.0.6/info.php**.

To view **PHP** info with **Apache2 in MPM mode** use a link or IP: **http://locahost:8004/info.php**, **http://172.55.0.5/info.php**.

To enable **Selenium** check **docker-compose.yml** and uncomment related **selenium** and **php-fpm-data** sections.

To enable custom configs from files, please, check image info and uncomment related image volumes section.

**PhpMyAdmin** is available under **http://172.55.0.2**

**MailHog** is available under **http://172.55.0.4:8025**

**NGROK** is available under **http://172.55.0.5:4040**

For running multiple instances on your local machine you could update IP range or port inside **docker-compose.yml**. For this, on your instance change IPs to another range, e.g. from `172.55` to `172.54.*`. The same is for ports.

You could edit your system host file for accessing containers via domain names by adding lines (or something like this based on your IP and domains, don't forget to change `extra_hosts` in `docker-compose.yml`):

`172.55.0.2 phpmyadmin.dockerlamp`

`172.55.0.3 site.dockerlamp`

`172.55.0.4 mailhog.dockerlamp`

`172.55.0.5 ngrok.dockerlamp`

## Documentation
See READMEs for more details, like environment variables for image

* [PhpMyAdmin](https://github.com/phpmyadmin/docker/blob/master/README.md)
* [PHP-FPM](https://github.com/a-kom/alpine-php_fpm/blob/master/README.md)
* [NGINX](https://github.com/a-kom/alpine-nginx/blob/master/README.md)
* [Apache2 with MPM mode](https://github.com/a-kom/alpine-apache/blob/master/README.md)
* [MailHog](https://github.com/a-kom/alpine-mailhog/blob/master/README.md)
* [NGROK](https://github.com/a-kom/alpine-ngrok/blob/master/README.md)

## License

This project is licensed under the MIT open source license.
