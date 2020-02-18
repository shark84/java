FROM tomcat
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY manager.xml /usr/local/tomcat/conf/Catalina/localhost/manager.xml
COPY webapp.war /usr/local/tomcat/webapps/webapp.war

