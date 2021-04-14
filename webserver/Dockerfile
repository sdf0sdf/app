FROM tomcat:9-jdk8

# ARG CATALINA_HOME=/opt/apache-tomcat-9.0.34
ENV CATALINA_HOME /usr/local/tomcat

# tomcat-users.xml sets up user accounts for the Tomcat manager GUI
# and script access for Maven deployments
COPY tomcat/conf/ $CATALINA_HOME/conf/
COPY tomcat/webapps/ $CATALINA_HOME/webapps/

# ADD tomcat/catalina.sh $CATALINA_HOME/bin/
ADD tomcat/run.sh $CATALINA_HOME/bin/run.sh
RUN chmod +x $CATALINA_HOME/bin/run.sh

# create mount point for volume with application
RUN mkdir $CATALINA_HOME/webapps/ServiceApp

# add tomcat jpda debugging environmental variables
#ENV JPDA_OPTS="-agentlib:jdwp=transport=dt_socket,address=8000,server=y,suspend=n"
ENV JPDA_ADDRESS="8000"
ENV JPDA_TRANSPORT="dt_socket"
#RUN echo "tomcat.enable.debug=true" >> $CATALINA_HOME/conf/catalina.properties

# start tomcat9 with remote debugging
EXPOSE 8080 8000
CMD ["run.sh"]
