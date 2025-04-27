FROM zabbix/zabbix-server-pgsql:7.2.6-alpine

USER root

RUN apk update && apk add --no-cache \
    curl \
    unixodbc \
    psqlodbc \
    iputils \
    bash \
    busybox-extras

USER zabbix
