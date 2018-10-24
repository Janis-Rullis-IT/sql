# NULL

## NOT IN

 won't filter out rows with NULL

```sql
`fruits` NOT IN('apple', 'banana')
```

### To include NULL rows too

```sql
( `fruits` IS NULL OR `fruits` NOT IN('apple', 'banana') )
````