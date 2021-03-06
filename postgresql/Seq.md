# [Seq](https://www.postgresql.org/docs/9.5/sql-createsequence.html)

![img/seq.png](img/seq.png)


```sql
CREATE SEQUENCE serial START 101;
```

## [Functions](https://www.postgresql.org/docs/9.1/functions-sequence.html)

```sql
SELECT nextval('serial');
```
> 101

```sql
SELECT currval('serial');
```
> 101

```sql
SELECT lastval();
```
> 101

## Set

```sql
SELECT setval('serial', 200); 
```
> 200

```sql
SELECT nextval('serial');
```
> 201

```sql
SELECT currval('serial');
```
> 201

## Create

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
