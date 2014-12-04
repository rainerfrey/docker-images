#!/bin/bash
ES_HOST=${ES_PORT_9200_TCP_ADDR:-127.0.0.1}
ES_PORT=${ES_PORT_9200_TCP_PORT:-9200}

sed -i -r -e "s/%ES_HOST%/${ES_HOST}/" -e "s/%ES_PORT%/${ES_PORT}/" /opt/kibana/config/kibana.yml

exec /opt/kibana/bin/kibana