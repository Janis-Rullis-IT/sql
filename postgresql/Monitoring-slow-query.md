# Monitoring

* [Processes.md](Processes.md)

## Log all queries - 0

```sql
ALTER DATABASE pgbench SET log_min_duration_statement=0;
```

## Queries longer than 100 ms

* https://severalnines.com/database-blog/how-identify-postgresql-performance-issues-slow-queries
* https://chartio.com/resources/tutorials/how-to-log-queries-in-postgresql/
* https://www.drupal.org/docs/7/guidelines-for-sql/logging-slow-sql-queries-server-side-in-postgresql

```sql
ALTER DATABASE my_db SET log_min_duration_statement=100;
```
