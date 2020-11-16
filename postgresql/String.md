# String

## Concat

```sql
UPDATE stuff SET
city = CONCAT(id, '-city')
 WHERE id = 1;
 ```

## [LIKE and ILIKE](https://kb.objectrocket.com/postgresql/how-to-use-ilike-in-postgres-1258)

> ILIKE is case-insensitive LIKE.

```sql
SELECT * FROM student WHERE name ILIKE 'a%';
```
