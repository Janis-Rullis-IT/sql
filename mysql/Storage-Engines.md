# [Storage-Engines](https://dev.mysql.com/doc/refman/8.0/en/storage-engines.html)

```sql
 SHOW ENGINES;
 ```
 
 ## MyISAM
 
 Because of table-locking is mostly used for read-only workloads.

# Memory (prev.HEAP)

**Its use cases are decreasing.**

InnoDB with its buffer pool memory area provides a general-purpose and durable way to keep most or all data in memory, and NDBCLUSTER provides fast key-value lookups for huge distributed data sets.
