# Strict-disable.md

* http://www.sqlines.com/mysql/sql_mode

## Display current

Get the current value that could be already modified by SET sql_mode statement
executed in the current session.

```sql
SELECT @@sql_mode;
```
> STRICT_TRANS_TABLES,ONLY_FULL_GROUP_BY
 
## Get the global value, not affected by SET sql_mode
```sql
   SELECT @@GLOBAL.sql_mode;
```
> STRICT_TRANS_TABLES,ONLY_FULL_GROUP_BY

## Edit the current list and update

```sql
SET sql_mode='STRICT_TRANS_TABLES';
```
