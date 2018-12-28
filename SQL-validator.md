# SQL-standard

* [mimer.com](https://developer.mimer.com/sql-validator-99/)
* [eversql.com](https://www.eversql.com/sql-syntax-check-validator/)
* [sql-validator NPM](https://www.npmjs.com/package/sql-validator)

## Invalid

```sql
CREATE TABLE IF NOT EXISTS `posts` (
`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT
)
```

## Valid

```sql
CREATE TABLE  posts (
id INT  NOT NULL 
)
```