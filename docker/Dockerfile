FROM tomcat:9.0-alpine

MAINTAINER oleh

RUN rm -f /usr/local/tomcat/conf/tomcat-users.xml
RUN awk '{gsub("securerandom.source=file:\/dev\/urandom", "securerandom.source=file:\/dev\/.\/urandom", $0); print > FILENAME}' $JAVA_PATH/jre/lib/security/java.security
COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/
COPY context.xml /usr/local/tomcat/webapps/host-manager/META-INF/
COPY maze-wars.war /usr/local/tomcat/webapps/maze-wars.war


EXPOSE 8080
