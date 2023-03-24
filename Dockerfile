FROM python:3.7

EXPOSE 18123
EXPOSE 19000

RUN chmod -R 777 /var/lib/*
RUN mkdir /var/lib/clickhouse/
RUN chmod -R 777 /var/lib/clickhouse/*

RUN curl https://clickhouse.com/ | sh
