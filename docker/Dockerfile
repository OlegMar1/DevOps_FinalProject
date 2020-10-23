FROM tomcat:9.0

MAINTAINER oleh
RUN apt-get update
RUN apt-get -y install haveged
RUN -Djava.security.egd=file:/dev/./urandom
COPY maze-wars.war /usr/local/tomcat/webapps/


EXPOSE 8080
