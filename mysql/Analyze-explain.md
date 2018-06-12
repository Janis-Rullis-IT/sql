# Analyze

## DESCRIBE

information about the columns in a table

```sql
DESCRIBE `posts`
```

## Query

```sql
EXPLAIN EXTENDED 
SELECT * FROM `posts`
```

## ANALYZE TABLE

```sql
ANALYZE TABLE t
```

## Get current queries

```sql
SHOW FULL PROCESSLIST
```
> In PMA Options/Show full texts/Go.

## Clear query cache

* [Clear MySQL query cache without restarting server (stackoverflow.com)](https://stackoverflow.com/a/5231744)

```sql
RESET QUERY CACHE;
```
```sql
FLUSH QUERY CACHE;
```