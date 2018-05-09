# mysql
FROM mysql:5.7 # Fix issue https://github.com/docker-library/mysql/issues/352
COPY conf/* /etc/mysql/conf.d/
RUN chmod a-w /etc/mysql/conf.d/*
