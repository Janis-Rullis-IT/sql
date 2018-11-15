# [Replace string](https://stackoverflow.com/a/14586441)

```
UPDATE `page`
SET `dir` = REPLACE(`dir`, '/eng', '/eng/')
WHERE `dir` LIKE '%/eng%';
```
## Fix converted curly braces

### Before

Hello %7Bname%7D.

### Code

```sql
UPDATE `posts`
SET `value` = REPLACE(`value`, '%7B', '{');
```

```sql
UPDATE `posts`
SET `value` = REPLACE(`value`, '%7D', '}')
```

### After

Hello {name}

## [Multiple replaces](https://stackoverflow.com/a/1671056)

* There is a chaining possible but it is not very readable so I prefer just repeating the query multiple times.

```sql
UPDATE `posts` SET `value` = REPLACE(`value`, 'apple', 'fruit');
UPDATE `posts` SET `value` = REPLACE(`value`, 'banana', 'fruit');
```
