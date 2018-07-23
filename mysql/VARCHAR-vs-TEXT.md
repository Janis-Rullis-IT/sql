# VARCHAR vs TEXT

* [MYSQL, THE DIFFERENCE BETWEEN TINYTEXT, TEXT, MEDIUMTEXT, LONGTEXT (rricketts.com)](https://rricketts.com/mysql-difference-tinytext-text-mediumtext-longtext/)
* [MySQL: TEXT vs. VARCHAR Performance (nicj.net)](https://nicj.net/mysql-text-vs-varchar-performance/)
* [MySQL: Large VARCHAR vs. TEXT?](https://www.linkedin.com/pulse/mysql-large-varchar-vs-text-omer-k-niah/)
* [What are the advantages and disadvantages of text fields compared to varchar fields in Mysql?](https://www.quora.com/What-are-the-advantages-and-disadvantages-of-text-fields-compared-to-varchar-fields-in-Mysql/answer/Greg-Kemnitz)
* [11.4.3 The BLOB and TEXT Types (dev.mysql.com)](https://dev.mysql.com/doc/refman/5.7/en/blob.html)
* [TEXT and VARCHAR inefficiencies in your db schema (openquery.com.au)](https://openquery.com.au/blog/text-varchar-inefficiencies-db-schema)

## TL; DR

### USE VARCHAR

* It is faster.
* Can be indexed.
* Can have a custom default value.

#### Best practice

* [Set VARCHAR to the maximum necessary, not the maximum possible.](https://openquery.com.au/blog/text-varchar-inefficiencies-db-schema)

### When to use TEXT?

[Use MEDIUMTEXT or LONGTEXT to store strings longer than approximately 64 Kb. VARCHAR Does not support storing values that large. Keep in mind the effects of the multi-byte character set.](https://www.linkedin.com/pulse/mysql-large-varchar-vs-text-omer-k-niah/)



## Default value

* TEXT - NULL
* VARCHAR - anything.

## INDEX

* TEXT - only FULL TEXT.
* VARCHAR - [any index as long it is no longer than 1000 chars.](https://github.com/janis-rullis/sql/blob/master/mysql/VARCHAR-max-len.md#tl-dr)

## Performance

### [TEXT is slower](https://www.quora.com/What-is-the-difference-between-VARCHAR-and-TEXT-in-MySQL/answer/Nicholas-Eden)

* For most types, all the data for each row is stored together. The larger types: blob and text, are stored separately. This means that there is a performance impact. When the database is doing a table read, if it needs to access the text columns it will need to do a lot more disk seeking. That is why it is especially important to select only the columns you need on these tables; the database will not need to do the extra work jumping to the storage for blobs and text.
* [TEXT and BLOB fields are not stored in-row — they require a separate lookup (and a potential disk read](https://nicj.net/mysql-text-vs-varchar-performance/)
* [Additionally, the inclusion of a TEXT or BLOB column in any sort will force the sort to use a disk-based temporary table](https://nicj.net/mysql-text-vs-varchar-performance/)
* [Blob types, including the TEXT types, are stored "off-row".  VARCHAR (and VARBINARY) tables are stored on-row.  Off-row storage means that an actual row contains a sort of link to another "table" structure that stores blobs.  Access to blobs is therefore more expensive than access to on-row data types as there's a second level of indirection. This isn't a big deal if you're only storing and fetching data from the blob, but if you access the blob in a WHERE clause, performance versus an equivalent VARCHAR/VARBINARY will be slower.](https://www.quora.com/What-are-the-advantages-and-disadvantages-of-text-fields-compared-to-varchar-fields-in-Mysql/answer/Greg-Kemnitz)

### Conclusion

Thus, the benefits of using a VARCHAR field instead of TEXT for columns between 255 and 65k characters seem obvious at first glance in some scenarios: potentially less disk reads (for queries including the column, as there is no out-of-row data) and less writes (for queries with sorts including the column).

## Storage

### TEXT

* TINYTEXT – up to 255 bytes, 1 byte overhead
* TEXT – up to 64 Kb, 2 bytes overhead
* MEDIUMTEXT – up to 16 Mb, 3 bytes overhead
* LONGTEXT – up to 4 Gb, 4 bytes overhead

### [VARCHAR](https://github.com/janis-rullis/sql/blob/master/mysql/VARCHAR-max-len.md)

* Starting with MySQL 5.0.3, the maximum field length for VARCHAR fields was increased from 255 characters to 65,535 characters.
* 5000 VARCHAR is fine.

