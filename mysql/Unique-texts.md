# Unique texts

* [5 ways to make hexadecimal identifiers perform better on MySQL (xaprb.com)](https://www.xaprb.com/blog/2009/02/12/5-ways-to-make-hexadecimal-identifiers-perform-better-on-mysql/)
* [MySQL: Unique constraint on large column (dba.stackexchange.com)](https://dba.stackexchange.com/a/27191)
* [How to prevent duplicate VARCHAR without a key limit? (dba.stackexchange.com)](https://dba.stackexchange.com/a/157785)

```sql
CREATE TABLE `1_user_address`(
    `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INT(10) UNSIGNED NOT NULL,
    `address` VARCHAR(250) NOT NULL,
    `hash` CHAR(40) NOT NULL COMMENT ('SHA1(address). Combined with user_id, provides unique user_id, adress combination.'),
    PRIMARY KEY(`id`),
    UNIQUE INDEX `user_address`(`user_id`, `hash`)
) ENGINE = INNODB DEFAULT CHARACTER SET = UTF8;
```

* Hash the field with a common algorith like SHA1 into CHAR(40).
* Add UNIQUE index, desirable on multiple columns `ADD UNIQUE INDEX `user_hash` (`user_id`, `hash`)`
> Don't use HEX becaue that will make application part more complex.