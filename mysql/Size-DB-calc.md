# Size-DB-calc.md

```sql
SELECT table_schema "Database (table_schema)", sum((data_length+index_length)/1024/1024/1024) AS "DB size in GB" FROM information_schema.tables WHERE table_schema = "my_cute_db_name";
```
