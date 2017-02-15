FROM armhf/alpine:3.4

MAINTAINER Arun Kalahasti <arun.kalahasti@mavs.uta.edu>

WORKDIR /data

COPY startup.sh /startup.sh

RUN apk add --update --no-cache bash mysql mysql-client \
    && rm -f /var/cache/apk/*
    
COPY my.cnf /etc/mysql/my.cnf

EXPOSE 3306
CMD ["/startup.sh"]
