# DELETE-with-JOIN

```sql
DELETE a, b FROM users a
JOIN posts b
ON a.id = b.user_id
WHERE a.id = 1;
```