FROM mysql
EXPOSE 3306
COPY ./api-db-docker.sql /docker-entrypoint-initdb.d/