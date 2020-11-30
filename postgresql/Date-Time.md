# Date-Time.md

### [`datestyle = 'GERMAN'`](https://www.postgresql.org/docs/7.2/sql-set.html#R1-SQL-SET-1)

Use dd.mm.yyyy for numeric date representations.

### [`localtime`](https://www.postgresqltutorial.com/postgresql-localtime/)

* https://www.postgresql.org/docs/9.1/functions-datetime.html#FUNCTIONS-DATETIME-CURRENT

PostgreSQL LOCALTIME function to get the time at which the current transaction starts.

Noted that the LOCATIME function returns a **TIME value without time zone** while the CURRENT_TIME function returns a TIME with time zone.

```sql
SELECT LOCALTIME;
```
