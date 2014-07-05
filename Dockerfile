FROM jfairbairn/base:14.04-1.0

MAINTAINER James Fairbairn <james@netlagoon.com>

USER root

RUN apt-get -y -q install redis-server

USER redis
EXPOSE 6379
VOLUME ["/etc/redis", "/var/lib/redis"]
CMD ["/usr/bin/redis-server"]
