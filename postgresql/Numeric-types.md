# [Numeric-types](https://www.postgresql.org/docs/11/datatype-numeric.html#DATATYPE-NUMERIC-TABLE)

* [MySQL / PostgreSQL Data_Types](https://en.wikibooks.org/wiki/Converting_MySQL_to_PostgreSQL#Data_Types)
* [SQL Numeric Types:](https://www.w3resource.com/sql/data-type.php#NUMERIC)

## [Auto-increment - serial](https://www.tutorialspoint.com/postgresql/postgresql_using_autoincrement.htm)

* [PostgreSQL Autoincrement (stackoverflow.com)](https://stackoverflow.com/a/787774)

> Not in a standard.

```sql
CREATE TABLE COMPANY(
   ID  SERIAL PRIMARY KEY,
   NAME           TEXT      NOT NULL,
   AGE            INT       NOT NULL,
   ADDRESS        CHAR(50),
   SALARY         REAL
);

INSERT INTO COMPANY (NAME,AGE,ADDRESS,SALARY)
VALUES ( 'Paul', 32, 'California', 20000.00 );

INSERT INTO COMPANY (NAME,AGE,ADDRESS,SALARY)
VALUES ('Allen', 25, 'Texas', 15000.00 );
```

 id | name  | age | address    | salary
----|-------|-----|------------|--------
  1 | Paul  |  32 | California |  20000
  2 | Allen |  25 | Texas      |  15000