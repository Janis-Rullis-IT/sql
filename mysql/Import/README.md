# Import

* Avoid [packet-bigger-than-max_allowed_packe](https://github.com/Janis-Rullis-IT/sql/blob/cacf8c771da8674f65d55ba2a49a215c95a8e6a8/mysql/packet-bigger-than-max_allowed_packet.md).


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
