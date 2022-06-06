FROM centos:7
RUN yum install -y httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/medion.zip /var/www/html/ 
WORKDIR /var/www/html/
RUN unzip medion.zip
RUN cp -rvf medion/* .
RUN rm -rf medion medion.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80