# [Storage-Engines](https://dev.mysql.com/doc/refman/8.0/en/storage-engines.html)

```sql
 SHOW ENGINES;
 ```
 
 ## MyISAM
 
 Because of table-locking is mostly used for read-only workloads.

## Memory (prev.HEAP)

**Its use cases are decreasing.**

InnoDB with its buffer pool memory area provides a general-purpose and durable way to keep most or all data in memory, and NDBCLUSTER provides fast key-value lookups for huge distributed data sets.

## CSV

Its tables are really **text files** with comma-separated values.
CSV tables let you import or dump data in CSV format, to exchange data with scripts and applications that read and write that same format. Because CSV tables are not indexed, you typically keep the data in InnoDB tables during normal operation, and only use CSV tables during the import or export stage.

## Archive
These compact, unindexed tables are intended for storing and retrieving large amounts of seldom-referenced historical, archived, or security audit information.
