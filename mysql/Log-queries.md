# Log queries

### Store in a table
* https://faun.pub/mysql-log-all-queries-to-file-and-table-585b30cd9921
* https://stackoverflow.com/a/36033983

```sql
SET GLOBAL log_output = 'TABLE';
SET GLOBAL general_log = 'ON';
SET sql_mode='STRICT_TRANS_TABLES';

SELECT `argument`
FROM `mysql`.`general_log`
WHERE `command_type` = 'Execute'
AND `argument` LIKE 'select %'
AND `argument` NOT LIKE 'select `value` from `cache` where %'
GROUP BY `argument`
ORDER BY `argument` DESC, `event_time` DESC
LIMIT 100;
```

## CLI
* [MySQL query log – how to log all queries? (blacksaildivision.com)](https://blacksaildivision.com/mysql-query-log)

```shell
mysqld --general_log=1 --general_log_file=/var/log/mysql/my_logs.txt
```
> In the file: 34 Prepare	set session sql_mode='NO_ENGINE_SUBSTITUTION'

## In the mysql docker

Add to the docker-compose.yml in the mysql container's command:

```yml
 --general_log=1 --general_log_file=/var/log/mysql/my_logs.txt
```

### Store in a file

```sql
SET GLOBAL log_output = 'FILE';
SET GLOBAL general_log_file = 'my_logs.txt';
SET GLOBAL general_log = 'ON';
```
