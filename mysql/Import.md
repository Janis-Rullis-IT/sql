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
