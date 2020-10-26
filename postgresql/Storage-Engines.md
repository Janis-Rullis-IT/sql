# Storage-Engines

One engine - MVCC.

## [MVCC vs InnoDB](https://severalnines.com/database-blog/comparing-data-stores-postgresql-mvcc-vs-innodb#:~:text=PostgreSQL%20vs%20InnoDB)

PostgreSQL MVCC has got few drawbacks especially in terms of bloated storage if your workload has frequent UPDATE/DELETE. So if you decide to use PostgreSQL you should be very careful to configure VACUUM wisely.
PostgreSQL community has also acknowledged this as a major issue and they have already started working on UNDO based MVCC approach (tentative name as ZHEAP) and we might see the same in a future release.
