# Count.md

> InnoDB does not know the count - MyISAM knew.

## InnoDB

Is transactional, so it does not store the total record count in the tables sys info. Because of this `COUNT(*)` in innoDB is really slowl.

## MySQL

Stores the total record count in the tables sys info, so the `COUNT(*)` is instant.
