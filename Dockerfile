FROM ubuntu/apache2

RUN mkdir -p /var/www/html/src
#ADD src/* /var/www/html/src/
ADD src/* /var/www/html/
ADD ./src/ /var/www/html/
RUN mkdir -p /opt/test/src
ADD src/* /opt/test/src/
ADD t1.sh /opt/test/src
RUN /bin/sh /opt/test/src/t1.sh
#ADD /root/php/src.tar.gz /var/www/html
#COPY ./src/ /var/www/html/src/
#WORKDIR /var/www/html/

#RUN tar -xvzf src.tar.gz 
