# Search-schema-docs-and-comments

## Example - get information about public fields
> Append `\G;` to see the whole text in CLI.

```sql
SELECT TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME,COLUMN_TYPE, COLUMN_COMMENT FROM information_schema.`COLUMNS` 
WHERE `COLUMN_COMMENT` LIKE '%public%'
OR COLUMN_NAME LIKE '%public%';
```

![img/schema-docs.png](img/schema-docs.png)
