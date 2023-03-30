# Columns

## From info_schema (if available)

## Pretty col info

```sql
SELECT COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_COMMENT
FROM INFORMATION_SCHEMA.`COLUMNS`  WHERE `TABLE_NAME` = 'users' 
AND COLUMN_NAME = 'name'\G
```

## By approx name

```sql
DESCRIBE INFORMATION_SCHEMA.`COLUMNS`;

SELECT * FROM INFORMATION_SCHEMA.`COLUMNS` 
WHERE `TABLE_SCHEMA` = 'YOUR_DATABASE'
-- AND `TABLE_NAME` = 'YOUR_TABLE`;
AND COLUMN_NAME LIKE '%product%';
```

## From the row in the MySQL Workbench

```sql
SELECT * FROM `my_tab` LIMIT 1;
```
Then right click and 'Copy with names'.
