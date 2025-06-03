FROM tomcat:10.1-jdk17
WORKDIR /usr/local/tomcat/webapps/
COPY target/maven-web-application.war /usr/local/tomcat/webapps/app.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
