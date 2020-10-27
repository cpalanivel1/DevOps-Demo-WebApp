FROM karthick2007/ubuntu-tomcat-postgres

COPY ./target/AVNCommunication-1.0.war /usr/local/tomcat/webapps

CMD ["/usr/local/tomcat/bin/catalina.sh","run"]