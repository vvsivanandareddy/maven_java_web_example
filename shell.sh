#!/bn/bash
cd /opt/apache-tomcat-9.0.29/webapps
./startup.sh
exec $@
