# Test variables

```php
//		\DB::statement("SET GLOBAL `connect_timeout` = 2"); // 5
//		\DB::statement("SET GLOBAL `connect_timeout` = 5"); // This resets to defs.
//    SELECT @@GLOBAL.connect_timeout;

//		\DB::statement("SET SESSION `wait_timeout` = 1"); // 600
//		\DB::statement("SET SESSION `wait_timeout` = 600"); // This resets to defs.

//		\DB::statement("SET SESSION `interactive_timeout` = 1"); // 28800
//		\DB::statement("SET SESSION `interactive_timeout` = 28800"); // This resets to defs.

//		\DB::statement("SET GLOBAL `max_allowed_packet` = 1024"); // 4194304
//		\DB::statement("SET GLOBAL `max_allowed_packet` = 4194304"); // This resets to defs.

//		\DB::statement("SET SESSION `net_read_timeout` = 1"); // 30
//		\DB::statement("SET SESSION `net_read_timeout` = 30"); // This resets to defs.

//		\DB::statement("SET SESSION `net_write_timeout` = 1"); // 60
		\DB::statement("SET SESSION `net_write_timeout` = 60"); // This resets to defs.
```

## Check impact

* In [PMA/Status](/server_status_variables.php)