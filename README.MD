## Configuration
1. Install `docker` and `docker-compose`
2. Share with Docker your C: drive, mount it on `/` with folder name `c`
3. In VirtualBox increase `default` VM memory size to 2-4 Gb
3. Put all required configuration files under `./opts/`
4. Edit service `tomcat` in `docker-compose.yaml` to have correct environment variable `JAVA_OPTS`
5. Put all required war files in folder `./tomcat/webapps/`
6. If some DB preparation is needed, put SQL scripts in `./mysql/sql_scripts/`. All sql scripts, located in `sql_scripts` folder will be executed in alphabetical order
7. Start `docker-machine` and remember it's IP. It will be needed during test run.
7. To up containers run `docker-compose up`, to stop containers run `docker-compose stop`
8. To stop and cleanup all containers, volumes and networks: `docker-compose down -v`
9. All output logs from applications will be stored in `./tomcat/logs`

## Tips&Tricks

1. To up all containers execute `docker-compose up` or `docker-compose up -d` to run containers in background mode.
2. Then you can access your containers by `docker-compose ps`
3. To stop containers run `docker-compose stop`
4. To stop and cleanup all containers, volumes and networks: `docker-compose down -v`
5. To run command in container `docker-compose exec <service name> <command to run>`
6. To connect from `tomcat` container to DB in `mysql` container: `jdbc:mysql://mysql:3306`
7. To measure resources: `docker stats` 
1. Build image: `docker build -t shabliad/tomcat .`
2. Run container: `docker run -it --rm -p 8080:8080 shabliad/tomcat`
3. Run container and open terminal `docker run -it shabliad/tomcat bash`
4. To run container and map local webapps folder to webapps folder in container: `docker run -it --rm -v <absolute_path>/webapps:/usr/local/tomcat/webapps -p 8080:8080 shabliad/tomcat`. It is possible to map container logs folder to any local folder to be able to read applications logs.
5. To run some command inside of container `docker exec -it --rm shabliad/tomcat bash`