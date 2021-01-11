FROM 10.45.80.1/public/centos7_java8_tomcat8_base:8.0.53
MAINTAINER WANGZHE
ENV LANG C.UTF-8

COPY dist/react.tar /usr/tomcat/tomcat8.0/webserver/webapps/react.tar
RUN mkdir -p /usr/tomcat/tomcat8.0/webserver/webapps/react && tar -xvf /usr/tomcat/tomcat8.0/webserver/webapps/react.tar -C /usr/tomcat/tomcat8.0/webserver/webapps/react
COPY server.xml /usr/tomcat/tomcat8.0/webserver/conf/server.xml
COPY ./docker-app.def /root/
