FROM mysql:latest

ENV MYSQL_DATABASE mydb

COPY ./sql-scripts/ /docker-entrypoint-initdb.d/