# [Permissions](https://dev.mysql.com/doc/refman/8.0/en/grant.html)

## [Grant perms to individual columns (stackoverflow.com)](https://stackoverflow.com/a/16674869)

```sql
GRANT SELECT (col1), INSERT (col1,col2) ON mydb.mytbl TO 'someuser'@'somehost';
```