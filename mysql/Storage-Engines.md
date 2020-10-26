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

## Blackhole

The Blackhole storage engine accepts but does not store data, similar to the Unix /dev/null device. Queries always return an empty set. These tables can be used in replication configurations where DML statements are sent to replica servers, but the source server does not keep its own copy of the data.

## NDB (also known as NDBCLUSTER)

This clustered database engine is particularly suited for applications that require the highest possible degree of uptime and availability.

## Merge

Enables a MySQL DBA or developer to logically group a series of identical MyISAM tables and reference them as one object. Good for VLDB environments such as data warehousing.

## Federated

Offers the ability to link separate MySQL servers to create one logical database from many physical servers. Very good for distributed or data mart environments.
