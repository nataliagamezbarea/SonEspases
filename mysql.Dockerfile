# Copy SQL files to Docker entrypoint for automatic import
FROM mysql:8.0

ENV MYSQL_DATABASE=husd_alfa
ENV MYSQL_ROOT_PASSWORD=root

COPY www/bd/*.sql /docker-entrypoint-initdb.d/