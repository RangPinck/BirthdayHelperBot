FROM postgres:17.4
COPY birthday_help_db.sql /docker-entrypoint-initdb.d/

ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=123456
ENV POSTGRES_DB=birthday_help_db
