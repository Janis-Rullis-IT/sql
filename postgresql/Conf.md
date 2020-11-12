# Conf

* https://varunver.wordpress.com/2018/08/13/logging-slow-queries-on-postgresql/
* https://hub.docker.com/_/postgres

```shell
 cat /var/lib/postgresql/data/postgresql.conf > /var/lib/postgres/def.conf
 chmod a+rw /var/lib/postgres/def.conf
```
* Customize it in `db/postgres` from the host machine.
* When done - replace the def with Yours

```shell
cp /var/lib/postgresql/data/postgresql.conf /var/lib/postgresql/data/postgresql.20201111.conf
cp /var/lib/postgres/def.conf /var/lib/postgresql/data/postgresql.conf
/etc/init.d/postgresql restart
```

## ! Sometimes need to restart the container and client connections

## Test changes

```sql
SHOW ALL;
SHOW timezone;
select pg_reload_conf();
```
