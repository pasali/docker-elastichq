FROM nginx:1.13-alpine

MAINTAINER mhmtbsl@gmail.com

ENV ELASTIC_HQ_VERSION v2.0.3
ENV ELASTIC_HQ_URL https://github.com/ElasticHQ/elasticsearch-HQ/archive/${ELASTIC_HQ_VERSION}.tar.gz

ADD ${ELASTIC_HQ_URL} /tmp/elasticsearch-HQ-${ELASTIC_HQ_VERSION}.tar.gz

RUN tar -xzf /tmp/elasticsearch-HQ-${ELASTIC_HQ_VERSION}.tar.gz --strip-components=1 -C /usr/share/nginx/html  && rm -rf /tmp/*
