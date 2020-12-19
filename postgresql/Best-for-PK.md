# Best-for-PK

* is autouncrement the best for distributed systems? 
* is uuid best for lookups? 

## https://medium.com/@satorulogic/but-business-logic-changes-frequently-at-some-point-in-the-future-whats-unique-may-become-5a5534671233
UUIDs as surrogate keys strikes me as a generally problematic approach except in cases where distributed processing is absolutely necessary. B-tree indexes in particular are going to have a very different workload and the values for the search are much larger than, say, a 32-bit int. The width impacts the storage of the b-tree and in PostgreSQL, a 128-bit value cannot be stored simply as a fixed-width field so you have variable width overhead.
As always, software is about tradeoffs.
