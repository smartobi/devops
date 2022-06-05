FROM centos:7
RUN yum install -y httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page268/zuchristmas.zip /var/www/html/ 
WORKDIR /var/www/html/
RUN unzip zuchristmas.zip
RUN cp -rvf zuchristmas-1.0.0/* .
RUN rm -rf zuchristmas-1.0.0 zuchristmas.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80