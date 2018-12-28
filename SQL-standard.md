# SQL-standard

MySQL supports all standard SQL integer types INTEGER or INT and SMALLINT.
In addition, MySQL provides TINYINT MEDIUMINT, and BIGINT as extensions to the standard.

There are SQL standards: http://en.wikipedia.org/wiki/SQL#Standardization http://www.contrib.andrew.cmu.edu/~shadow/sql/sql1992.txt
However, most DBMSs still implement a somewhat custom or extended version of the standard. (Microsoft SQL Server being the prime suspect).

* [modern-sql.com/standard](https://modern-sql.com/standard)
* [Grammar (jakewheat.github.io/sql-overview)](https://jakewheat.github.io/sql-overview/sql-2003-foundation-grammar.html#numeric-type)
* [MariaDB Knowledge base (mariadb.com)](https://mariadb.com/kb/en)
* [SQL-92 draft (contrib.andrew.cmu.edu)](http://www.contrib.andrew.cmu.edu/~shadow/sql/sql1992.txt)
* [MySQL / PostgreSQL Data_Types](https://en.wikibooks.org/wiki/Converting_MySQL_to_PostgreSQL#Data_Types)
* [SQL Numeric Types:](https://www.w3resource.com/sql/data-type.php#NUMERIC)
* https://www.whoishostingthis.com/resources/ansi-sql-standards/

## Which DBMS are more standard compliant?

* https://dba.stackexchange.com/a/110573
* http://troels.arvin.dk/db/rdbms/

## How to write a code that fits all vendors?

* https://www.sqlstyle.guide/
* If simple then use validators and the standart.
* Else ORM.
