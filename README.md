# Docker Compose LAMP stack
Based on the Docker images, built to be fast, small and extendable LAMP stack.

## Stack
* [PHP-FPM](https://github.com/a-kom/alpine-php_fpm)
* [Apache2 with MPM mode](https://github.com/a-kom/alpine-apache)
* [NGINX](https://github.com/a-kom/alpine-nginx)
* [Node.js](https://github.com/nodejs/docker-node)
* [MailHog](https://github.com/mailhog/MailHog)
* [NGROK](https://github.com/a-kom/alpine-ngrok)
* [Solr](https://github.com/docker-solr/docker-solr)
* [PhpMyAdmin](https://github.com/phpmyadmin/docker)
* [Adminer](https://github.com/TimWolla/docker-adminer)
* [MySQL](https://github.com/docker-library/mysql)
* [PostgreSQL](https://github.com/docker-library/postgres)
* [MongoDB](https://github.com/docker-library/mongo)
* [Redis](https://github.com/docker-library/redis)
* [Memcached](https://github.com/docker-library/memcached)
* [StandaloneFirefoxDebug](https://github.com/SeleniumHQ/docker-selenium/tree/master/StandaloneFirefoxDebug)
* [XHProf](https://github.com/longxinH/xhprof)


The LAMP stack consists of the following containers:

| Container | Versions | Service name | Image | Enabled by default |
| --------- | -------- | ------------ | ----- | ------------------ |
| PHP-FPM                   | latest, php-7, php-7.1, php-7.0, php-5       | php-fpm                     | [lordius/alpine-php_fpm]                     | ✓ |
| Apache2                   | latest                                       | apache2_mpm                 | [lordius/alpine-apache]                      | ✓ |
| Nginx                     | latest                                       | nginx                       | [lordius/alpine-nginx]                       | ✓ |
| Node.js                   | node:alpine                                  | node                        | [node]                                       |   |
| Mailhog                   | latest                                       | mailhog                     | [mailhog/mailhog]                            | ✓ |
| NGROK                     | latest                                       | ngrok                       | [lordius/alpine-ngrok]                       | ✓ |
| Solr                      | 6-alpine                                     | solr                        | [solr]                                       |   |
| PhpMyAdmin                | latest                                       | phpmyadmin                  | [phpmyadmin/phpmyadmin]                      | ✓ |
| Adminer                   | latest                                       | adminer                     | [adminer]                                    |   |
| MySQL                     | latest                                       | mysql                       | [mysql]                                      | ✓ |
| PostgreSQL                | postgres:alpine                              | postgres                    | [postgres]                                   |   |
| MongoDB                   | latest                                       | mongo                       | [mongo]                                      |   |
| Redis                     | redis:alpine                                 | redis                       | [redis]                                      |   |
| Memcached                 | memcached:alpine                             | memcached                   | [memcached]                                  |   |
| PHP-FPM-DATA              | latest, php-7, php-7.1, php-7.0, php-5       | php-fpm-data                | [lordius/alpine-php_fpm]                     |   |
| PHP-FPM-XHPROF            | latest, php-7, php-7.1, php-7.0, php-5       | php-fpm-xhprof              | [lordius/alpine-php_fpm]                     |   |
| Apache2                   | latest                                       | apache2_mpm-xhprof          | [lordius/alpine-apache]                      |   |

## Requirements
### Linux

Install [Docker](https://docs.docker.com/engine/installation) and [Docker Compose](https://docs.docker.com/compose/install).

### Windows, MacOS
#### Docker Toolbox (Recommend)

Install [Docker Toolbox](https://docs.docker.com/toolbox/overview).

##  Introduction
### Linux
Run inside the folder with **docker-compose.yml**: `docker-compose up -d`

To view the **PHP** info with the **Apache2 in MPM mode** use the IP: **http://172.55.0.3/info.php**.

To view the **PHP** info with the **NGINX** use the IP: **http://172.55.0.4/info.php**.

**MailHog** is available under **http://172.55.0.6:8025**

**NGROK** is available under **http://172.55.0.7:4040**

**PhpMyAdmin** is available under **http://172.55.0.9**

You can edit your system host file for accessing containers via domain names by adding lines (or something like this based on your IP and domains, don't forget to change `extra_hosts` in `docker-compose.yml`):

`172.55.0.4 site.dockerlamp`

`172.55.0.6 mailhog.dockerlamp`

`172.55.0.7 ngrok.dockerlamp`

`172.55.0.9 phpmyadmin.dockerlamp`


### Docker Toolbox
#### Windows
* Download and extract [Docker Compose LAMP](https://github.com/a-kom/docker-compose-lamp/releases) into your user directory.
Like `C:\Users\UserName\docker-compose-lamp`.
* Launch Docker Quickstart Terminal.
* Go to the [docker-compose-lamp directory](/docs/screenshots/Docker-Quickstart-Terminal-LAMP-directory.jpg): `cd /c/Users/UserName/docker-compose-lamp`.
* Run `docker-compose up -d`
* Launch [Kitematic (Alpha)](/docs/screenshots/Kinematic-launch.jpg).
* Go to the *NGINX* container and press *Settings* [tab](/docs/screenshots/Kinematic-NGINX-check.jpg).
* Press the Hostname/Ports [subtab](/docs/screenshots/Kinematic-NGINX-Hostname-Ports.jpg).
* Update the *Published IP:PORT* with your value, e.g. `192.168.99.100:80` and press Save.
* Navigate to a browser http://192.168.99.100/info.php and check that the NGINX container is available from the [browser](/docs/screenshots/Docker-Compose-LAMP-check-in-browser.jpg).
* Do the same thing with all other containers that you need to access in a browser. Don't forget, that `80` port is now busy, so
you can attach other containers to some other ports, like `8080`, `9080`, etc...

You can edit your system host file for accessing some containers via domain name by adding line (or something like this based on your IP and domains, don't forget to change `extra_hosts` in `docker-compose.yml`) like this:
`192.168.99.100 site.dockerlamp`

##### Docker Toolbox Known Issues
* (MariaDB doesn't start) https://github.com/a-kom/docker-compose-lamp/issues/5
* (MariaDB is aborting always) https://github.com/a-kom/docker-compose-lamp/issues/4

If you want to archive your project on Linux and extract to use on Windows with Docker Toolbox just remove `ibdata` and `ib_logfile*` files in your MySQL data directory. Uncomment in `docker-compose.yml` section `# build: docker/images/mysql/.` and remove section `image: mysql`. Then run a command:
`docker-compose stop && docker-compose rm -f && docker-compose up --build -d`
To verify MySQL container work run a command:
`docker-compose ps`.


#### MacOS
Similar to Windows section instruction.

### Extra features

To enable **Selenium** check **docker-compose.yml** and uncomment related **selenium** and **php-fpm-data** sections.
The same for other images not enabled by default.

To enable custom configs from files, please, check the image info and uncomment related image volumes section.

You can build own images based on base images. Check the `php-fpm` section for using custom image builds. 
The custom PHP-FPM image sample is located in the directory - `docker/images/php-fpm`. 

For running multiple instances on your local machine, you can update the IP range or ports inside **docker-compose.yml**. For this, on your instance, change IPs to another range, e.g. from `172.55` to `172.54.*`. The same are for ports.


## Documentation
See READMEs for more details, like environment variables for images:

* [PHP-FPM](https://github.com/a-kom/alpine-php_fpm/blob/php-7/README.md)
* [Apache2 with MPM mode](https://github.com/a-kom/alpine-apache/blob/master/README.md)
* [NGINX](https://github.com/a-kom/alpine-nginx/blob/master/README.md)
* [Node.js](https://github.com/nodejs/docker-node)
* [MailHog](https://github.com/mailhog/MailHog/blob/master/README.md)
* [NGROK](https://github.com/a-kom/alpine-ngrok/blob/master/README.md)
* [Solr](https://github.com/docker-solr/docker-solr)
* [PhpMyAdmin](https://github.com/phpmyadmin/docker)
* [Adminer](https://github.com/TimWolla/docker-adminer)
* [MySQL](https://github.com/docker-library/mysql)
* [PostgreSQL](https://github.com/docker-library/postgres)
* [MongoDB](https://github.com/docker-library/mongo)
* [Redis](https://github.com/docker-library/redis)
* [Memcached](https://github.com/docker-library/memcached)
* [StandaloneFirefoxDebug](https://github.com/SeleniumHQ/docker-selenium/tree/master/StandaloneFirefoxDebug)
* [XHProf](https://github.com/longxinH/xhprof)

## License

This project is licensed under the MIT open source license.
