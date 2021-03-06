FROM karthick2007/app-tomcat-postgres

COPY ./target/AVNCommunication-1.0.war /usr/local/tomcat/webapps

COPY ./startup.sh /scripts/startup.sh

RUN ["chmod", "+x", "/scripts/startup.sh"]

ENTRYPOINT ["/scripts/startup.sh"]
