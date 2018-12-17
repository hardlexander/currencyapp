FROM mysql:latest

ENV MYSQL_ALLOW_EMPTY_ROOT_PASSWORD
ENV MYSQL_DATABASE currencyapp  
ENV MYSQL_USER root 
ENV MYSQL_ALLOW_EMPTY_PASSWORD

ADD database.sql /docker-entrypoint-initdb.d