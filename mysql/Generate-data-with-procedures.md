# Generate data with procedures

* [MYSQL: GENERATE RANDOM DATA USING STORED PROCEDURE (blog.secaserver.com)](http://blog.secaserver.com/2012/04/mysql-generate-data-stored-procedure/)

```sql
CREATE DATABASE db_test;
USE db_test;
CREATE TABLE `tbl_data1` (
`a` INT(10) NULL,
`b` INT(10) NULL,
`c` INT(10) NULL
)
ENGINE=InnoDB;
```

```sql
DROP PROCEDURE IF EXISTS `GenerateData`;

DELIMITER //
CREATE PROCEDURE GenerateData()
BEGIN
DECLARE i INT DEFAULT 1;
WHILE i <= 10 DO
INSERT INTO tbl_data1 (a,b,c) VALUES (i, i % 3, i % 5);
SET i = i + 1;
END WHILE;
END
```

```sql
CALL GenerateData();
```

```json
[{"a":"1","b":"1","c":"1"},
{"a":"2","b":"2","c":"2"},
{"a":"3","b":"0","c":"3"},
{"a":"4","b":"1","c":"4"},
{"a":"5","b":"2","c":"0"},
{"a":"6","b":"0","c":"1"},
{"a":"7","b":"1","c":"2"},
{"a":"8","b":"2","c":"3"},
{"a":"9","b":"0","c":"4"},
{"a":"10","b":"1","c":"0"}]
```