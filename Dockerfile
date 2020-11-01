FROM karthick2007/app-tomcat-postgres

COPY ./target/AVNCommunication-1.0.war /var/lib/tomcat8/webapps
#/usr/local/tomcat/webapps

COPY ./startup.sh /scripts/startup.sh

RUN ["chmod", "+x", "/scripts/startup.sh"]

ENTRYPOINT ["/scripts/startup.sh"]
