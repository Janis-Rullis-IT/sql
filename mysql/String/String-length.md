# String length

```sql
SELECT * FROM `users` WHERE LENGTH(`email`) > 0;
```
## Order by length

```sql
SELECT `id`, LENGTH(`custom`) as len, ROUND(`custom`,-1) as int
FROM `products`
AND LENGTH(`custom`) > 3
ORDER BY `len` DESC
```