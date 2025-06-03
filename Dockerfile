FROM tomcat:10.1-jdk17
WORKDIR /usr/local/tomcat/webapps/
COPY target/webapp.war /usr/local/tomcat/webapps/webapp.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
