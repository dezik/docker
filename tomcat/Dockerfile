FROM tomcat:8.5-jdk8
MAINTAINER shabliad

# Create and configure Tomcat admin user
COPY tomcat_conf/create_admin_user.sh $CATALINA_HOME/scripts/create_admin_user.sh
COPY tomcat_conf/tomcat.sh $CATALINA_HOME/scripts/tomcat.sh
COPY tomcat_conf/wait-for-it.sh $CATALINA_HOME/scripts/wait-for-it.sh
RUN chmod +x $CATALINA_HOME/scripts/*.sh

# Copy MySQL connector
COPY tomcat_conf/mysql-connector-java-8.0.16.jar $CATALINA_HOME/lib/mysql-connector-java-8.0.16.jar
RUN chmod +x $CATALINA_HOME/lib/mysql-connector-java-8.0.16.jar

# Replace server.xml
COPY tomcat_conf/server.xml $CATALINA_HOME/conf/server.xml
COPY tomcat_conf/localhost.p12 $CATALINA_HOME/conf/localhost.p12

# Make manager app to be accessible from localhost
COPY tomcat_conf/context.xml $CATALINA_HOME/webapps/manager/META-INF/context.xml
COPY tomcat_conf/context.xml $CATALINA_HOME/webapps/host-manager/META-INF/context.xml

# Copy webapps to container
COPY webapps/*.war $CATALINA_HOME/webapps/

WORKDIR $CATALINA_HOME

EXPOSE 8080

CMD ["scripts/tomcat.sh"]