## Find string not containing

```sql
SELECT * FROM `users` WHERE `email` NOT LIKE '%@%' LIMIT 1;
```

## Find floats stored as string

```sql
SELECT `id`, LENGTH(`custom`) as len, ROUND(`custom`,-1) as int
FROM `products`
AND `custom` LIKE '%.%'
ORDER BY `len` DESC
```