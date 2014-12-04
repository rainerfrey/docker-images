FROM rainerfrey/java

ENV EL_VERSION 1.4.1

ENV EL_URL https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-$EL_VERSION.tar.gz

RUN curl -SL -O $EL_URL \
	&& curl -SL -O $EL_URL.sha1.txt \
	&& sha1sum -c elasticsearch-$EL_VERSION.tar.gz.sha1.txt \
	&& tar -xvzf elasticsearch-$EL_VERSION.tar.gz -C /opt \
	&& rm elasticsearch-$EL_VERSION.tar.gz*

RUN ln -s /opt/elasticsearch-$EL_VERSION /opt/elasticsearch

EXPOSE 9200

ENTRYPOINT ["/opt/elasticsearch/bin/elasticsearch"]