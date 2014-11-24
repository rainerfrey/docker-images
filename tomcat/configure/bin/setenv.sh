jmx_access="-Dcom.sun.management.jmxremote.access.file=${CATALINA_BASE}/conf/jmxremote.access"
jmx_password="-Dcom.sun.management.jmxremote.password.file=${CATALINA_BASE}/conf/jmxremote.password"
jmx_ssl="-Dcom.sun.management.jmxremote.ssl=false"
jmx_host="-Djava.rmi.server.hostname=192.168.59.103"
random="-Djava.security.egd=file:/dev/./urandom"

echo "Logbase: $LOG_BASE"

if [ ! -z "$LOG_BASE" ]; then
	mkdir -p "$LOG_BASE"
else
	LOG_BASE="${CATALINA_BASE}/logs"
fi
CATALINA_OUT="${LOG_BASE}/catalina.out"
CATALINA_OPTS="${jmx_access} ${jmx_password} ${jmx_ssl} ${jmx_host} ${random} -Dlog.base=${LOG_BASE} ${CATALINA_OPTS}"