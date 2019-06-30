FROM mysql:latest
MAINTAINER shabliad

# Add initialization DB scripts. Scripts will be executed in alphabetical order.
ADD sql_scripts docker-entrypoint-initdb.d
RUN chmod +x /docker-entrypoint-initdb.d/*.sql

EXPOSE 3306 33060

CMD ["mysqld"]