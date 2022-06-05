FROM centos:7
RUN yum install -y httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page215/food-and-restaurant.zip /var/www/html/ 
WORKDIR /var/www/html/
RUN unzip food-and-restaurant.zip
RUN cp -rvf food-andrestorent-one-page-template/* .
RUN rm -rf food-andrestorent-one-page-template food-and-restaurant.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80