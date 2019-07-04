## Running Docker containers

1. To up all containers execute `docker-compose up` or `docker-compose up -d` to run containers in background mode.
2. Then you can access your containers by `docker-compose ps`
3. To stop containers run `docker-compose stop`
4. To stop and cleanup all containers, volumes and networks: `docker-compose down -v`
5. To run command in container `docker-compose exec <service name> <command to run>`
6. To connect from `tomcat` container to DB in `mysql` container: `jdbc:mysql://mysql:3306`
7. To measure resources: `docker stats` 