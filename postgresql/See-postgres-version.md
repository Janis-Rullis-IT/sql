# [See-postgres-version](https://chartio.com/resources/tutorials/how-to-view-which-postgres-version-is-running/)

```shell
docker exec -it lm1-postgres bash
postgres -V
```
> postgres (PostgreSQL) 13.0 (Debian 13.0-1.pgdg100+1)

```sql
SELECT version();
```
> PostgreSQL 12.4 (Ubuntu 12.4-1.pgdg18.04+1) on x86_64-pc-linux-gnu, compiled by gcc (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0, 64-bit
