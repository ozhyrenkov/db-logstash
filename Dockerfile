# Inspired by https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash-oss:6.4.2

# Add your logstash plugins setup here
# Example: RUN logstash-plugin install logstash-filter-json RUN sudo mkdir /etc/elk_config
# WORKDIR ${LOGSTASH_HOME}
RUN logstash-plugin install logstash-input-jdbc logstash-output-amazon_es

USER root

# Create mount point for data directory
RUN mkdir /data ; chown -R logstash:logstash /data ; chmod -R 757 /data