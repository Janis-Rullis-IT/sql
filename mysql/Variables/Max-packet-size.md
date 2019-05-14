# Max packet size

* https://stackoverflow.com/a/8062538

In `.my.cnf`

```
max_allowed_packet=1GB
```

## Check

```sql
SHOW VARIABLES LIKE '%max_allowed_packet%';
```

```
+--------------------------+------------+
| Variable_name            | Value      |
+--------------------------+------------+
| max_allowed_packet       | 1073741824 |
| slave_max_allowed_packet | 1073741824 |
+--------------------------+------------+
```