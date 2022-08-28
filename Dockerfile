FROM ubuntu:latest
MAINTAINER "subbu"
RUN apt-get update
RUN apt-get install openjdk-8-jdk -y
RUN apt install  maven -y
WORKDIR /opt/ammulu
ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.0-M17/bin/apache-tomcat-10.1.0-M17.tar.gz /opt/ammulu
RUN tar -zxvf /opt/ammulu/apache-tomcat-10.1.0-M17.tar.gz
RUN mv apache-tomcat-10.1.0-M17/* /opt/ammulu
EXPOSE 8080
CMD ["/opt/tamcat/bin/catalina.sh","run]
