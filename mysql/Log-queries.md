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