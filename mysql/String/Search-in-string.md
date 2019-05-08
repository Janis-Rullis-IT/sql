# Search in a string

## Case in-sensitive

```sql
SELECT * FROM `table` WHERE `column` = 'value'
```

## Case sensitive

```sql
SELECT * FROM `table` WHERE `column` = BINARY 'value'
```

### Multiple

```sql
SELECT * FROM `translations`
WHERE CAST(`key` AS BINARY) IN('Food');
```

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

## By character count `_`

* `_` stands for exactly one character.


### Find words that has 2 more characters after 'Geographi'

```sql
SELECT `name` FROM `help_category` WHERE `name` LIKE 'Geographi__'
```
> Empty

```sql
SELECT `name` FROM `help_category` WHERE `name` LIKE 'Geographi_'
```
> Geographic
