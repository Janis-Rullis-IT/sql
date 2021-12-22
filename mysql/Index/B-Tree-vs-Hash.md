# [B-Tree-vs-Hash.md](https://stackoverflow.com/a/7306456)

You can only access elements by their primary key in a hashtable. This is faster than with a tree algorithm (O(1) instead of log(n)),
but you cannot select ranges (everything in between x and y). Tree algorithms support this in Log(n) whereas hash indexes can result in a full table scan O(n).

https://hakibenita.com/postgresql-hash-index

* The Hash index is smaller than the B-Tree index.
* Hash index size is not affected by the size of the indexed value

https://qr.ae/pGzFyg

A B-tree index can be used for column comparisons in expressions that use the =, >, >=, <, <=, or BETWEEN operators. The index also can be used for LIKE comparisons if the argument to LIKE is a constant string that does not start with a wildcard character.

Hash indexes are used only for equality comparisons that use the = or <=> operators (but are very fast). They are not used for comparison operators such as < that find a range of values. Systems that rely on this type of single-value lookup are known as “key-value stores”; to use MySQL for such applications, use hash indexes wherever possible.

https://dev.mysql.com/doc/refman/8.0/en/index-btree-hash.html
