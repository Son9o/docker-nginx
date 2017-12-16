#

FROM library/debian

#Using ENV
ENV public_html=/var/www/html
#Install nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
    echo "<h1> Amazing, it works !</h1>" > $public_html/index.html
#Ovverride index file again using COPY
COPY index.html /var/www/html/
#Define mountable volumes
VOLUME ["/var/log/nginx"]

WORKDIR /etc/nginx

ENTRYPOINT nginx

EXPOSE 80
EXPOSE 443
