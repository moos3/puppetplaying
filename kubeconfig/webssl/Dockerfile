FROM httpd:2.4
RUN apt-get install -y -q bash
COPY ./httpd.conf /usr/local/apache2/conf/
COPY ./cert.pem /usr/local/apache2/conf/
COPY ./key.pem /usr/local/apache2/conf/
COPY ./extra/httpd-ssl.conf /usr/local/apache2/conf/extra/
RUN mkdir /usr/local/apache2/log
