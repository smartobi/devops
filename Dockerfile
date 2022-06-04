FROM centos:latest
RUN yum install -y httpd 
RUN dnf install -y zip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/newsoft.zip /var/www/html/
RUN yum install -y unzip 
WORKDIR /var/www/html/
RUN unzip newsoft.zip
RUN cp -rvf newsoft/* .
RUN rm -rf newsoft newsoft.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80