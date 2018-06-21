# Convert data

## [Float to int](https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html#function_round)

```sql
SELECT ROUND(15.23);
```
> 15



## [Float to tens (not ones)](https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html#function_round)

```sql
SELECT ROUND(15.23, -1);
```
> 20
