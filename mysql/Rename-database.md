# [How to Rename a Database in MySQL](https://chartio.com/resources/tutorials/how-to-rename-a-database-in-mysql/)

* https://chartio.com/resources/tutorials/how-to-rename-a-database-in-mysql/
```shell
mysql -uYOUR_USER -p
CREATE DATABASE `NEW_DB`;
mysql -uYOUR_USER -p"YOUR_PASSWORD" OLD_DB -sNe 'show tables' | while read table; do mysql -uYOUR_USER -p"YOUR_PASSWORD" -sNe "RENAME TABLE OLD_DB.$table TO NEW_DB.$table"; done
```

1. In Phpmyadmin.
2. The [Dumping and Reimporting approach](https://chartio.com/resources/tutorials/how-to-rename-a-database-in-mysql/#dumping-and-reimporting)

Which means - import into the new desired database and drop the old one.
