# lordius/alpine-php_fpm
FROM lordius/alpine-php_fpm
LABEL maintainer=andriy.khomych@gmail.com
RUN apk add --no-cache php7-sysvshm
# Example of installing pdf2text utilities.
RUN apk add --no-cache poppler-utils
# Example of installing xhprof for PHP-7
RUN cd /tmp && git clone https://github.com/longxinH/xhprof
RUN cd /tmp/xhprof/extension && phpize && \ 
   ./configure && \
   make && \
   make install && \
   echo 'extension=xhprof.so' > /etc/php7/conf.d/xhprof.ini && \
   echo 'xhprof.output_dir=/var/xhprof' >> /etc/php7/conf.d/xhprof.ini
RUN mkdir /var/xhprof
RUN chmod -R 777 /var/xhprof
# Add graphviz for visual reports.
# Add graphviz for visual reports.
RUN apk add --no-cache graphviz \
                       ttf-freefont

