# Unique texts

* [5 ways to make hexadecimal identifiers perform better on MySQL (xaprb.com)](https://www.xaprb.com/blog/2009/02/12/5-ways-to-make-hexadecimal-identifiers-perform-better-on-mysql/)
* [MySQL: Unique constraint on large column (dba.stackexchange.com)](https://dba.stackexchange.com/a/27191)
* [How to prevent duplicate VARCHAR without a key limit? (dba.stackexchange.com)](https://dba.stackexchange.com/a/157785)

```sql
CREATE TABLE `1_user_address`(
    `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INT(10) UNSIGNED NOT NULL,
    `address` VARCHAR(250) NOT NULL,
    `hash` CHAR(40) NOT NULL COMMENT 'SHA1(address). Combined with user_id, provides unique user_id, address combination.',
    PRIMARY KEY(`id`),
    UNIQUE INDEX `user_address`(`user_id`, `hash`)
) ENGINE = INNODB DEFAULT CHARACTER SET = UTF8;
```

* Hash the field with a common algorithm like SHA1 (it will be the same in PHP, MYSQL, GO) into CHAR(40).
* Add UNIQUE index, desirable on multiple columns `ADD UNIQUE INDEX `user_hash` (`user_id`, `hash`)`
> Don't use HEX becaue that will make application part more complex.

## Unqiue PROOF

```sql
INSERT IGNORE INTO  `1_user_address` (`id`, `user_id`, `address`, `hash`) VALUES (NULL, '1', 'a', SHA1('a'));
```
> 1 row inserted.

```sql
INSERT IGNORE INTO  `1_user_address` (`id`, `user_id`, `address`, `hash`) VALUES (NULL, '1', 'a', SHA1('a'));
```
> 0 row inserted.

```sql
INSERT IGNORE INTO  `1_user_address` (`id`, `user_id`, `address`, `hash`) VALUES (NULL, '2', 'a', SHA1('a'));
```
> 1 row inserted.

```json
{"id":"1","user_id":"1","address":"a","hash":"86f7e437faa5a7fce15d1ddcb9eaeaea377667b8"},
{"id":"4","user_id":"2","address":"a","hash":"86f7e437faa5a7fce15d1ddcb9eaeaea377667b8"}
```

## Further reading

* [UNIQUE INDEX (github.com/janis-rullis/sql)](https://github.com/janis-rullis/sql/blob/master/mysql/Unique-index.md)