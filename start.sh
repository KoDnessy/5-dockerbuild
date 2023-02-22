
docker build -t webserver-nginx-apache2 .
docker run -it -d -p 80:80 -p 8080:8080 --name webserver-hybrid webserver-nginx-apache2