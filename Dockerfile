FROM centos:7
RUN yum install -y httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page241/tasty.zip /var/www/html/ 
WORKDIR /var/www/html/
RUN unzip tasty.zip
RUN cp -rvf tasty/* .
RUN rm -rf tasty tasty.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80