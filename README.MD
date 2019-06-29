How to run:
1. Build image: `docker build -t shabliad/tomcat .`
2. Run container: `docker run -it --rm -p 8080:8080 shabliad/tomcat`
3. Run container and open terminal `docker run -it shabliad/tomcat bash`
4. To run container and map local webapps folder to webapps folder in container: `docker run -it --rm -v <absolute_path>/webapps:/usr/local/tomcat/webapps -p 8080:8080 shabliad/tomcat`. It is possible to map container logs folder to any local folder to be able to read applications logs.