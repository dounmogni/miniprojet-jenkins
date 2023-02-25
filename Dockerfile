FROM ubuntu:18.04
MAINTAINER Franck-oumaga (franckoumaga@yahoo.com)
RUN apt-get update
RUN apt-get install -y nginx git
EXPOSE 80
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
#RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
RUN git clone https://github.com/dounmogni/static-website-example.git /var/www/html/

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
