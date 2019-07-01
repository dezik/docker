1. To build container `docker build -t shabliad/mysql .`
2. To start DB: `docker run -it -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root shabliad/mysql`
3. To connect to DB: `mysql -h127.0.0.1 -p3306 -uadmin -padmin`
4. All sql scripts, located in `sql_scripts` folder will be executed in in alphabetical order.