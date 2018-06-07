# Optimize ALTER

* [MySQL very slow for alter table query (stackoverflow.com)](https://stackoverflow.com/questions/12774709/mysql-very-slow-for-alter-table-query)
* [MySQL - fastest way to ALTER TABLE for InnoDB (dba.stackexchange.com)](https://dba.stackexchange.com/a/9770)
* [alter table add field taking forever (serverfault.com)](https://serverfault.com/a/243958)

MySQL performs most alterations by making an empty table with the desired new structure, inserting all the data from the old table into the new one, and deleting the old table.

* Copy the table structure to `tmp`.
* Execute on it required ALTER.
* Copy data.
* Rename the orig. table to `_old`.
* Rename the `tmp` to `orig`.