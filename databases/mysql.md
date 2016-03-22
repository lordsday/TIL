# root 암호 설정

## mysqladmin을 이용하여 root 암호 설정하기
```sh
$ mysqladmin -u root -p password new-password
```

## update문을 이용하여 root 암호 설정하기
```
mysql> update user set password = password('new-password') where user = 'root';
```

## set password를 이용하여 root 암호 설정하기
```
mysql> set password for root = password('new-password');
```

# Databases 보기와 생성

## 데이터베이스 보기
```
mysql> show databases;
```

## 데이터베이스 생성
```
mysql> create database DB명;
```

# 사용자

## 사용자 추가
```
mysql> GRANT ALL PRIVILEGES ON DB명.* to USER명@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;
mysql> GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;

mysql> GRANT ALL on DB명.* TO id@'localhost';
mysql> GRANT ALL on DB명.* TO id;
mysql> GRANT ALL on DB명.* TO id@'xxx.xxx.xxx.%';

mysql> FLUSH PRIVILEGES;
```
