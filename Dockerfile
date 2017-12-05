# Pull official httpd docker, first...
# docker pull httpd
#
# Pull base image
# ---------------
FROM httpd:2.4
# Copy files required to build this image
COPY / /usr/local/apache2/htdocs/demo/
COPY httpd.conf /usr/local/apache2/conf/httpd.conf
RUN chown -R www-data:www-data /usr/local/apache2/htdocs/demo && \
    chmod -R ugo+rx /usr/local/apache2/htdocs/demo
