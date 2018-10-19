#! /usr/bin/env sh
    chown -R logstash:logstash /data
    chmod o+w /data
    sudo -u logstash logstash
