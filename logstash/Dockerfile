FROM rainerfrey/java

ENV LOGSTASH_VERSION 1.4.2

ENV LOGSTASH_URL https://download.elasticsearch.org/logstash/logstash/logstash-$LOGSTASH_VERSION.tar.gz

RUN curl -SL -O $LOGSTASH_URL \
	&& curl -SL -O $LOGSTASH_URL.sha1.txt \
	&& sha1sum -c logstash-$LOGSTASH_VERSION.tar.gz.sha1.txt \
	&& tar -xvzf logstash-$LOGSTASH_VERSION.tar.gz -C /opt \
	&& rm logstash-$LOGSTASH_VERSION.tar.gz*

RUN ln -s /opt/logstash-$LOGSTASH_VERSION /opt/logstash

RUN mkdir /etc/logstash
COPY ./configure /etc/logstash

ENTRYPOINT ["/opt/logstash/bin/logstash", "agent", "-f", "/etc/logstash"]