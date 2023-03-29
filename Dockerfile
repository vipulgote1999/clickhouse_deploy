FROM python:3.7

EXPOSE 18123
EXPOSE 19000

RUN chmod -R 777 /var/lib/*
RUN mkdir /var/lib/clickhouse/
RUN mkdir /var/lib/clickhouse/test
RUN chmod -R 777 /var/lib/clickhouse/*
RUN ls /var/lib/clickhouse/

RUN curl https://clickhouse.com/ | sh

#RUN ./clickhouse server
RUN apt-get install apt-transport-https ca-certificates dirmngr
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv E0C56BD4
RUN echo "deb https://repo.clickhouse.com/deb/stable/ main/" | sudo tee \
    /etc/apt/sources.list.d/clickhouse.list
    
RUN apt-get update
RUN apt-get install -y clickhouse-server clickhouse-client
RUN service clickhouse-server start

