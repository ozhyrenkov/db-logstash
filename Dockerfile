# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash-oss:6.2.2

# Add your logstash plugins setup here 
# Example: RUN logstash-plugin install logstash-filter-json RUN sudo mkdir /etc/elk_config 
# WORKDIR ${LOGSTASH_HOME}
RUN logstash-plugin install logstash-input-jdbc logstash-output-amazon_es

USER root

# Crreate mount point for data directory
RUN mkdir /data ; chown -R logstash:logstash /data ; chmod -R 757 /data
RUN wget https://s3.amazonaws.com/redshift-downloads/drivers/jdbc/1.2.16.1027/RedshiftJDBC42-1.2.16.1027.jar -O /data/redshift.jar

