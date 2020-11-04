# Create-table

* [PostgreSQL CREATE TABLE (postgresqltutorial.com)](http://www.postgresqltutorial.com/postgresql-create-table/)
* https://www.tutorialspoint.com/postgresql/postgresql_create_table.htm
* https://stackoverflow.com/a/9826915

```sql
CREATE TABLE roles(
   role_id serial PRIMARY KEY,
   role_name VARCHAR (255) UNIQUE NOT NULL
);
```

```sql
SELECT nextval('roles_role_id_seq');
```
> 1
