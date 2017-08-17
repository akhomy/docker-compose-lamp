# Docker-based LAMP stack

## Stack
* [MariaDB](https://github.com/docker-library/mariadb)
* [PhpMyAdmin](https://github.com/phpmyadmin/phpmyadmin)
* [PHP-FPM](https://github.com/a-kom/alpine-php_fpm)
* [NGINX](https://github.com/a-kom/alpine-nginx)
* [Apache2 with MPM mode](https://github.com/a-kom/alpine-apache)
* [MailHog](https://github.com/a-kom/alpine-mailhog)
* [StandaloneFirefoxDebug](https://github.com/SeleniumHQ/docker-selenium/tree/master/StandaloneFirefoxDebug)


The LAMP stack consists of the following containers:

| Container | Versions | Service name | Image | Enabled by default |
| --------- | -------- | ------------ | ----- | ------------------ |
| MariaDB                   | 10.0               | mariadb   | [mariadb]                                    | ✓ |
| PhpMyAdmin                | latest             | pma       | [phpmyadmin/phpmyadmin]                      | ✓ |
| PHP-FPM                   | latest             | php       | [lordius/alpine-php_fpm]                     | ✓ |
| Apache                    | latest             | apache    | [lordius/alpine-apache]                      | ✓ |
| Nginx                     | php-7, php-5       | nginx     | [lordius/alpine-nginx]                       | ✓ |
| Mailhog                   | latest             | mailhog   | [lordius/alpine-mailhog]                     | ✓ |
| NGROK                     | latest             | ngrok     | [lordius/alpine-ngrok]                       | ✓ |
| PHP-FPM-DATA              | php-7, php-5       | php-fpm   | [lordius//alpine-php_fpm]                    |   |
| StandaloneFirefoxDebug    | 2.48.2             | selenium  | [selenium/standalone-firefox-debug]          |   |

## Requirements
Install Docker (Linux, Docker for Mac or Docker for Windows (10+ Pro)). For Linux additionally install docker compose.

##  Introduction
Run as usual, inside folder with **docker-compose.yml**: `docker-compose up -d`

To view **PHP** info with **NGINX** use link or IP: **http://locahost:8005/info.php**, **http://172.55.0.6/info.php**.

To view **PHP** info with **Apache2 in MPM mode** use link or IP: **http://locahost:8004/info.php**, **http://172.55.0.5/info.php**.

To enable **Selenium**, for this pls, check **docker-compose.yml** and uncomment related **selenium** and **php-fpm-data** sections.

**PhpMyAdmin** is available under **http://172.55.0.3**

**MailHog** is available under **http://172.55.0.7:8025**

**NGROK** is available under **http://172.55.0.8:4040**

## Documentation
See READMEs for more details about every image

* [PhpMyAdmin](https://github.com/phpmyadmin/docker/blob/master/README.md)
* [PHP-FPM](https://github.com/a-kom/alpine-php_fpm/blob/master/README.md)
* [NGINX](https://github.com/a-kom/alpine-nginx/blob/master/README.md)
* [Apache2 with MPM mode](https://github.com/a-kom/alpine-apache/blob/master/README.md)
* [MailHog](https://github.com/a-kom/alpine-mailhog/blob/master/README.md)
* [NGROK](https://github.com/a-kom/alpine-ngrok/blob/master/README.md)

## License

This project is licensed under the MIT open source license.
