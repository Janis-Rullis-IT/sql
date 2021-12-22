# [B-Tree-vs-Hash.md](https://stackoverflow.com/a/7306456)

ou can only access elements by their primary key in a hashtable. This is faster than with a tree algorithm (O(1) instead of log(n)),
but you cannot select ranges (everything in between x and y). Tree algorithms support this in Log(n) whereas hash indexes can result in a full table scan O(n).

https://hakibenita.com/postgresql-hash-index

* The Hash index is smaller than the B-Tree index.
* Hash index size is not affected by the size of the indexed value
