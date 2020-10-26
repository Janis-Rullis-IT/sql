# INDEX

* [What happens if I drop a MySQL column without dropping its index first?](https://stackoverflow.com/a/4341928)

If columns are dropped from a table, the columns are also removed from any index of which they are a part. If all columns that make up an index are dropped, the index is dropped as w

## FULLTEXT, hash

* https://dev.mysql.com/doc/refman/8.0/en/mysql-indexes.html

Most MySQL indexes (PRIMARY KEY, UNIQUE, INDEX, and FULLTEXT) are stored in B-trees. Exceptions: Indexes on spatial data types use R-trees; MEMORY tables also support hash indexes; InnoDB uses inverted lists for FULLTEXT indexes.

* https://dev.mysql.com/doc/refman/8.0/en/index-btree-hash.html

### `FULLTEXT`

for text MATCH, AGAINST. Earlier we used for MYISAM, now INNO supports it too.

## HASH

* https://www.oreilly.com/library/view/high-performance-mysql/0596003064/ch04.html#hpmysql-CHP-4-SECT-2.2
* https://severalnines.com/database-blog/overview-mysql-database-indexing#:~:text=Hash%20indexes%20(user%20controlled)%20are,then%20it's%20used%20for%20lookups.

For mem tabs.

Hash indexes (user controlled) are used only in MEMORY engine and can be used for exact lookups. For each column a hash is calculated and then it’s used for lookups. Let’s say that a hash for value ‘mylongstring’ is ‘1234’. MySQL will store a hash value along with a pointer to the row. If you execute query like:

```sql
SELECT * FROM table WHERE my_indexed_column = 'mylongstring';
```
The WHERE condition will be hashed and as result will be ‘1234’, the index will point to the correct row. Main advantage of HASH index is the fact that hashes can be much smaller than the indexed value itself. Main problem, though, is that this index type can’t be used to anything else than a simple lookup. You cannot use index on (column1, column2) to cover query with only ‘column1’ in the WHERE clause. Hashes are not unique - collisions can happen and they will slow down the lookup as MySQL will have to check more than a single row per index lookup. 
 
