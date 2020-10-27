# INDEX-data-types

* https://www.enterprisedb.com/postgres-tutorials/overview-postgresql-indexes
* https://hub.packtpub.com/6-index-types-in-postgresql-10-you-should-know/
* https://www.citusdata.com/blog/2017/10/17/tour-of-postgres-index-types/
* https://thoughtbot.com/blog/postgres-index-types 
* https://www.postgresql.org/docs/9.5/indexes-types.html#:~:text=PostgreSQL%20provides%20several%20index%20types,fit%20the%20most%20common%20situations.
* https://www.postgresqltutorial.com/postgresql-indexes/postgresql-index-types/

By default, the CREATE INDEX command creates B-tree indexes, which fit the most common situations.

## B-tree

B-trees can handle equality and range queries on data that can be sorted into some ordering.

## Hash

Whenever an indexed column is involved in a comparison using the = operation.

```sql
CREATE INDEX name ON table USING HASH (column);
```

## GiST

GiST indexes are not a single kind of index, but rather an infrastructure within which many different indexing strategies can be implemented.
Accordingly, the particular operators with which a GiST index can be used vary depending on the indexing strategy (the operator class).
As an example, the standard distribution of PostgreSQL includes GiST operator classes for several two-dimensional geometric data types.

> Finds the ten places closest to a given target point. The ability to do this is again dependent on the particular operator class being used. In Table 59-1, operators that can be used in this way are listed in the column "Ordering Operators".

```sql
SELECT * FROM places ORDER BY location <-> point '(101,456)' LIMIT 10;
```

## SP-GiST

SP-GiST indexes, like GiST indexes, offer an infrastructure that supports various kinds of searches.
SP-GiST permits implementation of a wide range of different non-balanced disk-based data structures, such as quadtrees,
k-d trees, and radix trees (tries). As an example, the standard distribution of PostgreSQL includes SP-GiST operator classes for two-dimensional points.

## GIN 

Indexes are inverted indexes which can handle values that contain more than one key, arrays for example. Like GiST and SP-GiST, GIN can support 
many different user-defined indexing strategies and the particular operators with which a GIN index can be used vary depending on the indexing strategy. 
As an example, the standard distribution of PostgreSQL includes GIN operator classes for one-dimensional arrays.

## BRIN

Indexes (a shorthand for Block Range indexes) store summaries about the values stored in consecutive table physical block ranges.

For data types that have a linear sort order, the indexed data corresponds to the minimum and maximum values of the values in the column for each block range, which support indexed queries using these operators:
