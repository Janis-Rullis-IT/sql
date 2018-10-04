# Log queries

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

## Set global var

### Store in a table

```sql
SET GLOBAL log_output = 'TABLE';
SET GLOBAL general_log = 'ON';
```
> Will be stored in `mysql.general_log` table.

```sql
SELECT * FROM `mysql`.`general_log`
ORDER BY `event_time` DESC
LIMIT 50;
```

### Store in a file

```sql
SET GLOBAL log_output = 'FILE';
SET GLOBAL general_log_file = 'my_logs.txt';
SET GLOBAL general_log = 'ON';
```