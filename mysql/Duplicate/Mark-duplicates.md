# Mark duplicates

```sql
UPDATE `user` n1, `user` n2
SET n1.surname = CONCAT(n1.surname, '-duplicate')
WHERE n1.id > n2.id AND n1.name = n2.name;
```

![duplic.png](duplic.png)
