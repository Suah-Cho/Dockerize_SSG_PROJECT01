# Dockerize_SSG_PROJECT01
SSG_PROJECT_01 dockerize 레포지터리입니다.



mysql image
```shell
docker container run -d --name mydb -e MYSQL_ROOT_PASSWORD=password mysql:latest
a81de8fef6b8922c2c6f73aab55c0532d19ecb4ca187d955da9ad6579c8d8332
docker container exec -it mydb /bin/bash
bash-4.4# mysql -u root -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 8.1.0 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
```
