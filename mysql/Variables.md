# Variables

## List of variables

* [Check variable's values like scope or defaults in the MySQL var table](https://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html#sysvar_interactive_timeout)

## Show

```sql
SHOW VARIABLES LIKE 'connect_timeout'
```
> connect_timeout 2

```sql
SELECT @@GLOBAL.connect_timeout;
```
> 2

```sql
SELECT @@SESSION.connect_timeout;
```
> #1193 - Unknown system variable 'connection_timeout'

```sql
SELECT @@SESSION.wait_timeout;
```
> 600

## Set global

```sql
\DB::statement("SET GLOBAL `connect_timeout` = 3");
```
> 3

### Effect scope

* In PMA displays the same value, so this is machine-wide.
* After the reboot is 5.

## Set per session

### wait_timeout

```php
\DB::select("SELECT @@SESSION.wait_timeout;");
```
> 600

```php
\DB::statement("SET SESSION `wait_timeout` = 900");
```
> Works! Later after other DB actions it is still 900, and in PMA is still 600.

### Only global vars will fail

```php
\DB::statement("SET SESSION `connection_timeout` = 9");
```
> Can not set, because it is only available as a global var.

#### Workaround to set a global variables per session

* Collect the default value.
* Set the desired.
* When the required event is done, set back to the default.

## Variables

### [connect_timeout](https://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html#sysvar_connect_timeout)

* scope: Global
* default: 10
* min: 2
* max: 31536000

### [wait_timeout](https://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html#sysvar_wait_timeout)

* scope: Global, Session
* default: 28800
* min: 1
* max: 31536000

### [interactive_timeout](https://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html#sysvar_interactive_timeout)

* scope: Global, Session
* default: 28800
* min: 1
* max: Not mentioned.

### [max_allowed_packet](https://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html#sysvar_max_allowed_packet)

* scope: Global, Session
* default: 4194304
* min: 1024
* max: 1073741824

### [net_read_timeout](https://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html#sysvar_net_read_timeout)

* scope: Global, Session
* default: 30
* min: 1
* max: Not mentioned.

### [net_write_timeout](https://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html#sysvar_net_write_timeout)

* scope: Global, Session
* default: 60
* min: 1
* max: Not mentioned.