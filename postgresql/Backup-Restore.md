# [Backup-Restore](https://www.postgresql.org/docs/13/backup-dump.html)

```shell
pg_dump -U lm1-user lm1-user > 20201104-lm1.sql
pg_dump -U lm1-user lm1-user | gzip > 20201104-lm1.sql.gz
```

## Restore

```shell
psql -U lm1-user --set ON_ERROR_STOP=on lm2 < 20201104-lm1.sql
gunzip -c 20201104-lm1.sql | psql -U lm1-user --set ON_ERROR_STOP=on lm2
```

## All DBs

```shell
pg_dumpall > dumpfile
psql -f dumpfile lm1-user
```
