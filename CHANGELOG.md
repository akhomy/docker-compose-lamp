# Changelog

## Docker Compose LAMP stack 1.0.0
* Initial release.

## Docker Compose LAMP stack 1.1.0
* Fixed IP ranges in docker-compose and README.
* Added DRUSH and PHP_SHOW_ERRORS variables for PHP-FPM container.
* Added DOCUMENT_ROOT as example variable for using the site in subfolders.
* Added sample configs folder and commented special directories in docker-compose.yml for PHP-FPM(PHP-5, PHP-7), Apache2, NGINX.
* Split MailHog to be the independent container and added a dependency on MailHog to PHP-FPM.
* Added references to MongoDB, Node.js in README.
* Started section in the documentation for Docker Toolbox.

## Docker Compose LAMP stack 1.2.0
* Added Docker Toolbox instruction and update base README.
* Added build image for the PHP-FPM.
* Changed base config, runtime directories structure.
* Added docs folder.

## Docker Compose LAMP stack 1.3.0
* Switched to the official Mailhog image.

## Docker Compose LAMP stack 1.4.0
* Added IP for PHP-FPM container.
* Checked work of Selenium and PHP-FPM.

## Docker Compose LAMP stack 1.5.0
* Updated Node image to the last node:alpine version.
* Updated Solr image to the alpine-6 version.
* Updated Postgres image to the postgres:alpine version.
* Updated Redis image to the redis:alpine version.
* Updated Memcached image to the memcahed:alpine version.

## Docker Compose LAMP stack 1.6.0
* Added example tools to PHP-FPM image.
* Switched from MariaDB to MySQL docker image.
* Added a sample image build based on docker MySQL image to fix Windows Docker Toolbox issue.
* Updated README.md links and added extra info for Docker Toolbox.

## Docker Compose LAMP stack 1.7.0
* Updated README, added new tags for PHP-FPM image.
* Switched to docker-compose 3 version.
* Added example of installing XHProf for PHP-7 and necessary utils.
* Update docker-compose, some common typos and example of PHP-FPM-XHPROF container.

## Docker Compose LAMP stack 1.7.0
* Updated README, fixed issue with latest MySQL image.
* Added new ENV variables `LINES`, `COLUMNS` for PHP-FPM container.
* Fixed Dockerfile for LAMP build MySQL image.
* Added db.php to test connection.