# Aborted connection (Got an error reading communication packets

```
mysql | 2018-10-03 15:35:00 140469729617664 [Warning] Aborted connection 1209 to db: 'my_db' user: 'my_user' host: '172.11.0.7' (Got an error reading communication packets)
```

* [MySQL “Got an error reading communication packet” errors (percona.com)](https://www.percona.com/blog/2016/05/16/mysql-got-an-error-reading-communication-packet-errors/)


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
