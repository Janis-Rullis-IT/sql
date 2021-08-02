# Strict-disable.md

* http://www.sqlines.com/mysql/sql_mode
* https://dev.mysql.com/doc/refman/8.0/en/sql-mode.html

> Change in Laravel https://github.com/Janis-Rullis-IT/dev/blob/272c51c3ccdb2d07a81055e84a9d3c32ff6b711e/Coding/php/laravel/Strict-mode-mysql-change.md

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

## Reset to def

```sql
SET sql_mode='';
```
> STRICT_TRANS_TABLES,ONLY_FULL_GROUP_BY

## Example of the impact

* https://dev.mysql.com/doc/refman/8.0/en/group-by-handling.html

```sql
SELECT id, COUNT(name) AS c FROM apples
HAVING c >= 1;
```
> Error Code: 1140. In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'panelapi_db.questions.id'; this is incompatible with sql_mode=only_full_group_by

```sql
SET sql_mode='STRICT_TRANS_TABLES'
```

```sql
SELECT id, COUNT(name) AS c FROM apples
HAVING c >= 1;
```
> '3', '13946'

