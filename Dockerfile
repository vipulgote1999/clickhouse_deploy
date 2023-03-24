FROM python:3.7

EXPOSE 18123
EXPOSE 19000

RUN chmod -R 777 /var/lib/*
RUN mkdir /var/lib/clickhouse/
RUN mkdir /var/lib/clickhouse/test
RUN chmod -R 777 /var/lib/clickhouse/*
RUN ls /var/lib/clickhouse/

RUN curl https://clickhouse.com/ | sh

RUN ./clickhouse server
