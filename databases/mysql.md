# Install
## root 암호 설정

### mysqladmin을 이용하여 root 암호 설정하기
```sh
$ mysqladmin -u root -p password new-password
```
### update문을 이용하여 root 암호 설정하기
```
mysql> update user set password = password('new-password') where user = 'root';
```
### set password를 이용하여 root 암호 설정하기
```
mysql> set password for root = password('new-password');
```

## Databases 보기와 생성
### 데이터베이스 보기
```
mysql> show databases;
```
### 데이터베이스 생성
```
mysql> create database DB명;
```

## 사용자
### 사용자 추가
```
mysql> GRANT ALL PRIVILEGES ON DB명.* to USER명@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;
mysql> GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;

mysql> GRANT ALL on DB명.* TO id@'localhost';
mysql> GRANT ALL on DB명.* TO id;
mysql> GRANT ALL on DB명.* TO id@'xxx.xxx.xxx.%';

mysql> FLUSH PRIVILEGES;
```

# Query
## Table별 사이즈 확인
```sql
SELECT 
    table_name,
    table_rows,
    round(data_length/(1024*1024),2) as 'DATA_SIZE(MB)',
    round(index_length/(1024*1024),2) as 'INDEX_SIZE(MB)'
FROM information_schema.TABLES
where table_schema = '데이터베이스이름'
GROUP BY table_name 
ORDER BY data_length DESC 
LIMIT 10;
```
## Database별 사이즈 확인
```sql
SELECT
	count(*) NUM_OF_TABLE,
	table_schema,concat(round(sum(table_rows)/1000000,2),'M') rows,
	concat(round(sum(data_length)/(1024*1024*1024),2),'G') DATA,
	concat(round(sum(index_length)/(1024*1024*1024),2),'G') idx,
	concat(round(sum(data_length+index_length)/(1024*1024*1024),2),'G') total_size,
	round(sum(index_length)/sum(data_length),2) idxfrac
FROM information_schema.TABLES
GROUP BY table_schema
ORDER BY sum(data_length+index_length) DESC LIMIT 10;
```

# Etc
## Executing SQL Statements from a Text File
```sh
shell> mysql db_name < text_file
```
```
mysql> source file_name
mysql> \. file_name
```
