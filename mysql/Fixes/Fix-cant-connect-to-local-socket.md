# [`ERROR 2002 (HY000): Can't connect to local MySQL server through socket '/var/run/mysqld/mysqld.sock' (2)`](https://stackoverflow.com/a/23471897)

## Solution

Connect through tcp.

```shell
mysql -uroot -p -h localhost -P 3306 --protocol=tcp
```