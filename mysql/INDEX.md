# INDEX

* [What happens if I drop a MySQL column without dropping its index first?](https://stackoverflow.com/a/4341928)

If columns are dropped from a table, the columns are also removed from any index of which they are a part. If all columns that make up an index are dropped, the index is dropped as w