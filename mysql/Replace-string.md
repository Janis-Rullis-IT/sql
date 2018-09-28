# [Replace string](https://stackoverflow.com/a/14586441)

```
UPDATE `page`
SET `dir` = REPLACE(`dir`, '/eng', '/eng/')
WHERE `dir` LIKE '%/eng%';
```
## Fix converted curly braces

```sql
UPDATE `posts`
SET `value` = REPLACE(`value`, '%7B', '{');
```

```sql
UPDATE `posts`
SET `value` = REPLACE(`value`, '%7D', '}')
```