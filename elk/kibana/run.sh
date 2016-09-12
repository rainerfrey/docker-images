#!/bin/bash

ES_PORT=${ES_PORT_9200_TCP_PORT:-9200}

sed -i -r -e "/^elasticsearch: \"http:/ s/:\d+/${ES_PORT}/" /opt/kibana/config/kibana.yml

exec /opt/kibana/bin/kibana