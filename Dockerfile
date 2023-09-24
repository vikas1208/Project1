FROM tomcat
MAINTAINER prashanth
RUN apt update
COPY target/devops.war /usr/local/tomcat/webapps/
