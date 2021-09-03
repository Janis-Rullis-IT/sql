# Import

## A regular import

```sql
mysql -uroot -p my_db < my_db.sql
```

## Show running queries

```sql
mysql -uroot -p -v -f -D my_db < my_db.sql
```

## .sql.gz files

```
zcat < filename.sql.gz | mysql -u root database
```

## Workbench + `*.csv`

* Export `*.xls` to `*.csv` (select `wrap strings in quotes`).
* In Workbench: Open table's data view/Import/Use existing/Show logs.

![https://dev.mysql.com/doc/workbench/en/images/wb-develop-export-results.png](https://dev.mysql.com/doc/workbench/en/images/wb-develop-export-results.png)
