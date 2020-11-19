# INDEX

* https://www.mssqltips.com/sqlservertip/1337/building-sql-server-indexes-in-ascending-vs-descending-order/
* https://www.postgresqltutorial.com/postgresql-indexes/postgresql-create-index/
* https://www.tutorialspoint.com/postgresql/postgresql_indexes.htm
* https://devcenter.heroku.com/articles/postgresql-indexes

```sql
CREATE INDEX users_idx1 ON users (
name, surname);
```
```sql
DROP INDEX users_idx1;
```

### Add a comment

```sql
COMMENT ON INDEX users_idx1 is '#15 users are goood.';
```

## List including CREATE INDEX statements

```sql
SELECT tablename, indexname, indexdef
FROM pg_indexes
WHERE schemaname = 'public'
AND indexname ILIKE '%idx%'
ORDER BY tablename, indexname;
```

## Sequnce

* https://use-the-index-luke.com/sql/where-clause/the-equals-operator/concatenated-keys
