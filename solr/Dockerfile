FROM twgc/jre7:0.3

ENV SOLR_VERSION 4.2.0

ENV SOLR solr-$SOLR_VERSION

RUN \
    wget --output-document=/opt/$SOLR.tgz https://archive.apache.org/dist/lucene/solr/$SOLR_VERSION/$SOLR.tgz && \
	mkdir -p /opt && \
	tar -C /opt --extract --file /opt/$SOLR.tgz && \
	rm /opt/$SOLR.tgz && \
	ln -s /opt/$SOLR /opt/solr

RUN mkdir -p /etc/solr

COPY conf /etc/solr/conf

VOLUME /etc/solr/data

COPY solr.xml /etc/solr/solr.xml

WORKDIR /opt/solr/example

CMD ["/bin/bash", "-c", "java -Xms128M -Xmx512M -Dsolr.solr.home=/etc/solr -Djetty.port=8982 -jar start.jar"]

# 8982 for development env
EXPOSE 8982
