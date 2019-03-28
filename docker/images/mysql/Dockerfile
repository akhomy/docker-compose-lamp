# mysql
# Fix issue https://github.com/docker-library/mysql/issues/352
FROM mysql:5.7
COPY conf/* /etc/mysql/conf.d/
RUN chmod a-w /etc/mysql/conf.d/*
