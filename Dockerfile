# Use Tomcat 8 with JRE 8 as the base image
FROM tomcat:8-jre8

# Set the maintainer label
LABEL maintainer="valaxytech@gmail.com"

# Copy the WAR file into the Tomcat webapps directory
COPY ./webapp.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 to access the application
EXPOSE 8083

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]
