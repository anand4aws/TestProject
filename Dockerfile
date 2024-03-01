FROM centos:latest
MAINTAINER anand.pandey023@gmail.com
RUN yum install -y httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/healet.zip /var/www/html
WORKDIR /var/www/html
RUN unzip healet.zip
RUN cp -rvf healet-html/*
RUN rm -rf healet.zip healet-html
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
RUN echo "done"
