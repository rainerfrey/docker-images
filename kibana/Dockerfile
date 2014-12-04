FROM rainerfrey/java

ENV KIBANA_VERSION 4.0.0-BETA2

ENV KIBANA_URL https://download.elasticsearch.org/kibana/kibana/kibana-$KIBANA_VERSION.tar.gz

RUN curl -SL -O $KIBANA_URL \
	&& tar -xvzf kibana-$KIBANA_VERSION.tar.gz -C /opt \
	&& rm kibana-$KIBANA_VERSION.tar.gz*

RUN ln -s /opt/kibana-$KIBANA_VERSION /opt/kibana

COPY ./configure /opt/kibana/config

COPY ./run.sh /opt/kibana/bin/

EXPOSE 5601

ENTRYPOINT ["/opt/kibana/bin/run.sh"]