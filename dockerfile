# Use Alpine Linux
FROM alpine:latest


RUN apk update && \
    apk upgrade && \
    apk add --update openrc openssl nginx apache2 apache2-utils  && \
    mkdir /etc/nginx/certificates

COPY httpd.conf /etc/nginx/http.d/default.conf 
##COPY default-nginx /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80 443 8080 8081


ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]