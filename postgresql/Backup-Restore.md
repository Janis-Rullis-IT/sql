# [Backup-Restore](https://www.postgresql.org/docs/13/backup-dump.html)

```shell
pg_dump -U lm1-user lm1-user > 20201104-lm1.sql
pg_dump -U lm1-user lm1-user | gzip > 20201104-lm1.sql.gz
```

## Restore

```shell
psql -U lm1-user --set ON_ERROR_STOP=on lm2 < 20201104-lm1.sql
pg_restore -U my-user -d "my-db" "my.sql"
gunzip -c 20201104-lm1.sql.gz | psql -U lm1-user --set ON_ERROR_STOP=on lm4
```

## All DBs

```shell
pg_dumpall > dumpfile
psql -f dumpfile lm1-user
```

## [Tab](https://www.atlantic.net/vps-hosting/how-to-backup-and-restore-database-in-postgresql/)

```sql
pg_dump -U lm1-user lm1-user -t roles | gzip > 20201104-lm1-roles.sql.gz
gunzip -c 20201104-lm1-roles.sql.gz | psql -U lm1-user --set ON_ERROR_STOP=on lm5
```
