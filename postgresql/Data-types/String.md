# String

* http://www.postgresqltutorial.com/postgresql-char-varchar-text/
* https://www.postgresql.org/docs/11/datatype-character.html

```sql
CREATE TABLE character_tests (
 id serial PRIMARY KEY,
 x CHAR (1),
 y VARCHAR (10),
 z TEXT
);
```