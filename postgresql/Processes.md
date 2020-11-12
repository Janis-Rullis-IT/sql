# Processes

## SQL

```sql
SELECT user, pid, client_addr, query, query_start, NOW() as now, NOW() - query_start AS elapsed, state
FROM pg_stat_activity
WHERE state != 'idle'
ORDER BY elapsed DESC;
```

![img/pg-proc.png](img/pg-proc.png)

## PGAdmin/Statistics or Dashboard
