#!/bin/bash

ES_PORT=${ES_PORT_9200_TCP_PORT:-9200}

sed -i -r -e "/port =>/ s/\d+/${ES_PORT}/" /etc/logstash/11_output_elasticsearch.conf

exec /opt/logstash/bin/logstash agent -f /etc/logstash