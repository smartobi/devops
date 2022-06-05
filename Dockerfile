FROM centos:7
RUN yum install -y httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page250/eatery.zip /var/www/html/ 
WORKDIR /var/www/html/
RUN unzip eatery.zip
RUN cp -rvf templatemo_515_eatery/* .
RUN rm -rf templatemo_515_eatery eatery.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80