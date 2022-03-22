FROM centos:7
MAINTAINER shivagni01@gmail.com 
RUN yum update -y
RUN yum install httpd unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page276/spicy.zip /var/www/html
WORKDIR /var/www/html
RUN unzip spicy.zip
RUN cp -rvf spicy/* .
RUN rm -rf spicy.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
