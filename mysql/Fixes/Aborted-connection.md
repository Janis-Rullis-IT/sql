# Aborted connection (Got an error reading communication packets

```
mysql | 2018-10-03 15:35:00 140469729617664 [Warning] Aborted connection 1209 to db: 'my_db' user: 'my_user' host: '172.11.0.7' (Got an error reading communication packets)
```

* [MySQL “Got an error reading communication packet” errors (dzone.com)](https://dzone.com/articles/mysql-got-an-error-reading-communication-packet-er)
* [B.5.2.10 Communication Errors and Aborted Connections (dev.mysql.com)](https://dev.mysql.com/doc/refman/8.0/en/communication-errors.html)
* [MySQL Error Reading Communication Packets (dba.stackexchange.com)](https://dba.stackexchange.com/a/19139)
* [Database importing hangs: Got an error reading communication packets (support.plesk.com)](https://support.plesk.com/hc/en-us/articles/115003853233-Database-importing-hangs-Got-an-error-reading-communication-packets)
* [Aborted connection 12345 to db: 'tortix' user: 'tortix' host: 'localhost' (Got an error reading communication packets) (support.atomicorp.com)](https://support.atomicorp.com/hc/en-us/articles/360000202388-Aborted-connection-12345-to-db-tortix-user-tortix-host-localhost-Got-an-error-reading-communication-packets-)

## Info about happened errors

### Log

In the case of `log_warnings>1`, MySQL also writes this information to the error log.

```
Aborted connection 305628 to db: ...
```

### When a communication error occurs it increments the status counter for either:

* [Aborted_clients](https://dev.mysql.com/doc/refman/5.6/en/server-status-variables.html#statvar_Aborted_clients)
* [Aborted_connects](https://dev.mysql.com/doc/refman/5.6/en/server-status-variables.html#statvar_Aborted_connects)

#### In [PMA/Status](/server_status_variables.php)

```
Aborted clientsDocumentation	7
Aborted connectsDocumentation	0	The number of failed attempts to connect to the MySQL server.
```

## How to debug?

### Decrease to see if it fails

* This will prove that, it really affects this specific case.

### Increase above the usual

* If works, great.
