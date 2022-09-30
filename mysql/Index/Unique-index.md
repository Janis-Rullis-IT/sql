# UNIQUE INDEX

> !BE AWARE! Of the length. It might be that max is 191 chars.

Avoid duplicate addresses for a user.

```sql
CREATE TABLE `1_user_address`(
    `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INT(10) UNSIGNED NOT NULL,
    `address` VARCHAR(250) NOT NULL,
    PRIMARY KEY(`id`),
    UNIQUE INDEX `title`(`user_id`, `address`)
) ENGINE = INNODB DEFAULT CHARACTER SET = UTF8;
```

## TL;DR

### [Use INSERT IGNORE INTO](#insert-ignore-into)

```sql
INSERT IGNORE INTO `1_user_address` (`id`, `user_id`, `address`) VALUES (NULL, '1', 'a');
```

### [Re-index id after 5 years](#re-index-the-id-when-its-critical)

If you don't like gaps between id (1, 6, 20) then you can re-index them:

```sql
SET @i = 0;
UPDATE `1_user_address`
SET `id` = (@i := @i+1)
ORDER BY `id` ASC;
```

## The long story

```sql
INSERT INTO `1_user_address` (`id`, `user_id`, `address`) VALUES (NULL, '1', 'a');
```
> #1062 - Duplicate entry 'a' for key 'title'

## Ignore duplicate error?

* [MySQL - ignore insert error: duplicate entry (stackoverflow.com)](https://stackoverflow.com/a/812462)

### INSERT IGNORE INTO

```sql
INSERT IGNORE INTO `1_user_address` (`id`, `user_id`, `address`) VALUES (NULL, '1', 'a');
```

> 0 rows inserted. (Query took 0.0044 seconds.)

```sql
INSERT IGNORE INTO `1_user_address` (`id`, `user_id`, `address`) VALUES (NULL, '1', 'b');
```

### Same for UPDATE IGNORE

> Handle the copying of data that has an overlapping code. Update what You can and then change the code of those duplicates, and try agian :D
```sql
UPDATE IGNORE products SET `type` = 'car' WHERE `type` = 'old-car';
UPDATE products SET `code` = CONCAT(`code`,'-old') WHERE `type` = 'old-car';
UPDATE products SET `type` = 'car' WHERE `type` = 'old-car';
```

> 1 row inserted.

```sql
INSERT IGNORE INTO `1_user_address` (`id`, `user_id`, `address`) VALUES (NULL, '2', 'a');
```

> 1 rows inserted. (Query took 0.0044 seconds.)

#### Snag

* [MySQL INSERT IGNORE alternatives (ypereirareis.github.io)](https://ypereirareis.github.io/blog/2016/03/22/mysql-insert-ignore-alternatives/)
* [How To Keep Auto_Increment From Increasing With IGNORE INTO (kaplankomputing.com)](https://www.kaplankomputing.com/blog/tutorials/how-to-keep-auto_increment-from-increasing-with-ignore-into/)

Even if the row was not inserted, the autoincement increases.

```json
{"id":"1","user_id":"1","address":"a"},
{"id":"4","user_id":"1","address":"b"},
{"id":"6","user_id":"2","address":"a"}
```

##### innodb_autoinc_lock_mode=0

Add innodb_autoinc_lock_mode=0 to your my.cnf file (/etc/mysql/my.cnf).
Then truncate the table and start your insert again.

But well, that could work for a new project.

#### INSERT ... ON DUPLICATE KEY UPDATE

But I'm afraid of potential deadlocks.

#### Re-index the id when it's critical

For my current situation **I choose this one**.

* [Set incremental value (github.com/janis-rullis)](https://github.com/janis-rullis/sql/blob/master/mysql/Set-incremental-value.md).

```sql
SET @i = 0;
UPDATE `1_user_address`
SET `id` = (@i := @i+1)
ORDER BY `id` ASC;
```

> 2 rows affected. (Query took 0.0024 seconds.)

```json
{"id":"1","user_id":"1","address":"a"},
{"id":"2","user_id":"1","address":"b"},
{"id":"3","user_id":"2","address":"a"}
```
