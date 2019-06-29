FROM tomcat:8.5-jdk8
MAINTAINER shabliad

# Install prepare infrastructure
RUN apt-get update && \
 apt-get install less -y && \
 apt-get install vim -y

# Create and configure Tomcat admin user
ADD tomcat_conf/create_admin_user.sh $CATALINA_HOME/scripts/create_admin_user.sh
ADD tomcat_conf/tomcat.sh $CATALINA_HOME/scripts/tomcat.sh
ADD tomcat_conf/context.xml $CATALINA_HOME/webapps/manager/META-INF/context.xml
ADD tomcat_conf/context.xml $CATALINA_HOME/webapps/host-manager/META-INF/context.xml
RUN chmod +x $CATALINA_HOME/scripts/*.sh

# Copy config files
ADD opt $CATALINA_HOME/opt

WORKDIR $CATALINA_HOME

EXPOSE 8080

CMD ["scripts/tomcat.sh"]