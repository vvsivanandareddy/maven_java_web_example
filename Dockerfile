FROM ubuntu:18.04
run apt update
workdir /opt/
add https://www-eu.apache.org/dist/tomcat/tomcat-9/v9.0.29/bin/apache-tomcat-9.0.29.tar.gz
run tar -xvzf apache-tomcat-9.0.29.tar.gz
add **/*.war /opt/apache-tomcat-9.0.29/webapps/
add shell.sh /usr/local/bin
add chmod 777 /usr/local/bin/shell.sh
entrypoint ["shell.sh"]
cmd ["tail -f /dev/null]
