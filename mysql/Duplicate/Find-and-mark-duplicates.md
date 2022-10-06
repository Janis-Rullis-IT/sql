## Find duplicates

```sql
SELECT * FROM user n1, user n2
WHERE n1.id > n2.id AND n1.code = n2.code;
```

## Mark duplicates

```sql
UPDATE `user` n1, `user` n2
SET n1.surname = CONCAT(n1.surname, '-duplicate')
WHERE n1.id > n2.id AND n1.name = n2.name;
```

![duplic.png](duplic.png)
