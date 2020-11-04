# [Numeric](https://www.postgresql.org/docs/13/datatype-numeric.html)

![num.png](num.png)

## Why no UNSINGED?

* https://stackoverflow.com/questions/20810134/why-unsigned-integer-is-not-available-in-postgresql
* https://www.drupal.org/project/drupal/issues/60871#comment-401010
* https://www.postgresqltutorial.com/postgresql-integer/


### is it a good idea to use a check constraint for unsigned?

* https://www.postgresql.org/docs/current/ddl-constraints.html#DDL-CONSTRAINTS-CHECK-CONSTRAINTS
* https://launchschool.com/books/sql_first_edition/read/types#:~:text=Signed%20vs.%20Unsigned%20Values

Seems that official doc supports using it.

```sql
price numeric CONSTRAINT positive_price CHECK (price > 0)
```
