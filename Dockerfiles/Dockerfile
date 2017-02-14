FROM alpine:3.4

MAINTAINER Arun Kalahasti <arun.kalahasti@mavs.uta.edu>


WORKDIR /app
VOLUME /app
COPY startup.sh /startup.sh

RUN apk add --update mysql mysql-client && rm -f /var/cache/apk/*
COPY my.cnf /etc/mysql/my.cnf

EXPOSE 3306
CMD ["/startup.sh"]
