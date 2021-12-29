# Columns

## From info_schema (if available)

```sql
SELECT * FROM `COLUMNS` 
WHERE `TABLE_SCHEMA` = 'YOUR_DATABASE'
AND `TABLE_NAME` = 'YOUR_TABLE`;
```

## From the row in the MySQL Workbench

```sql
SELECT * FROM `my_tab` LIMIT 1;
```
Then right click and 'Copy with names'.
