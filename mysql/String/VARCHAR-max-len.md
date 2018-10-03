# VARCHAR max length

## TL; DR

Tables total byte size is 65530.

* 5000 VARCHAR is fine.
* [1000 VARCHAR is fine for indexeed field.](https://stackoverflow.com/q/8746207) 
> but better use sha1 hash for indexed texts (See Unique-texts.md)

## Long story

* [C.10.4 Limits on Table Column Count and Row Size (dev.mysql.com)](https://dev.mysql.com/doc/refman/8.0/en/column-count-limit.html)
* [15.8.1.7 Limits on InnoDB Tables (dev.mysql.com)](https://dev.mysql.com/doc/refman/8.0/en/innodb-restrictions.html)
* [#1071 - Specified key was too long; max key length is 1000 bytes (stackoverflow.com)](https://stackoverflow.com/a/8747703)

Although InnoDB supports row sizes larger than **65,535 bytes internally, MySQL itself imposes a **row-size limit of 65,535 for the combined size of all columns**:

```sql
CREATE TABLE t (a VARCHAR(8000), b VARCHAR(10000),
c VARCHAR(10000), d VARCHAR(10000), e VARCHAR(10000),
f VARCHAR(10000), g VARCHAR(10000)) ENGINE=InnoDB;
```
> ERROR 1118 (42000): Row size too large. The maximum row size for the
> used table type, not counting BLOBs, is 65535. You have to change some
> columns to TEXT or BLOBs

## Example if create only 1 VARCHAR field

### 65535

```sql
CREATE TABLE t2 (c1 VARCHAR(65535) NOT NULL) ENGINE = InnoDB CHARACTER SET latin1;
```

Did not throw an error but created the table and changed the type to text.

### 65530

```sql
CREATE TABLE t2 (c1 VARCHAR(65530) NOT NULL) ENGINE = InnoDB CHARACTER SET latin1;
```

Created the table with VARCHAR(65530).