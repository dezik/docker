1. To build container `docker build -t shabliad/mysql .`
2. To start DB: `docker run -it -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root shabliad/mysql`
3. To connect to DB: `mysql -uadmin -padmin -h127.0.0.1 -p3306`