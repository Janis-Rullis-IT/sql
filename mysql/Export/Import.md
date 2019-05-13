# Import

## Ignore already existing tables

* https://stackoverflow.com/a/24140395

```shell
cat db_dump_sql | sed "s/CREATE TABLE /CREATE TABLE IF NOT EXISTS /g" | mysql -uroot -p my_database_name
```