#!/bin/bash
sudo service postgresql start
sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD 'password';"
/usr/local/tomcat/bin/catalina.sh run
