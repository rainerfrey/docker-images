jmx_access="-Dcom.sun.management.jmxremote.access.file=${CATALINA_HOME}/conf/jmxremote.access"
jmx_password="-Dcom.sun.management.jmxremote.password.file=${CATALINA_HOME}/conf/jmxremote.password"
jmx_ssl="-Dcom.sun.management.jmxremote.ssl=false"
jmx_host="-Djava.rmi.server.hostname=192.168.59.103"
random="-Djava.security.egd=file:/dev/./urandom"
CATALINA_OPTS="${jmx_access} ${jmx_password} ${jmx_ssl} ${jmx_host} ${random} ${CATALINA_OPTS}"