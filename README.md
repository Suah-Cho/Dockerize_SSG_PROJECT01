# Dockerize_SSG_PROJECT01
SSG_PROJECT_01 dockerize 레포지터리입니다.

database volume
```shell
docker volume create database
docker containaer run -d --name mydb -e MYSQL_ROOT_PASSWORD=password -v database:/var/lib/mysql mysql
docker container -it exec mydb /bin/sh
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

mysql>create user user identified by 'passwd';
mysql> grant all privileges on *.* to user;
Query OK, 0 rows affected (0.01 sec)

// 데이터베이스 테이블 작성
// mydb 컨테이너가 삭제되더라도 볼륨이 로컬에 남아있다.

```

### ‼️️볼륨 설정 시 주의 사항‼️
#### 도커 컴포즈업을 하면 볼륨이 새로 생긴다.

**해결 방법**
1. 볼륨 이름을 작업하고 있는 파일 명_볼륨이름으로 설정
    예) C:\docker\flask인 경우 flask_myvolume으로 설정
2. 디비 도커 파일 작성해서 데이터를 가져가도록 설정
    
