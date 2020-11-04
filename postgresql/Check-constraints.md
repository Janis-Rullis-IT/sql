# Check-and-constraints

> PostgreSQL does not support CHECK constraints that reference table data other than the new or updated row being checked.

* https://www.postgresql.org/docs/current/ddl-constraints.html#DDL-CONSTRAINTS-CHECK-CONSTRAINTS

better use a named CONSTRAINT (improve errors and can be referred)

```sql
price numeric NOT NULL CONSTRAINT positive_price CHECK (price > 0)
```

## Across columns

Say you store a regular price and a discounted price, and you want to ensure that the discounted price is lower than the regular price:

```sql
CREATE TABLE products (
    product_no integer,
    name text,
    price numeric NOT NULL CHECK (price > 0),
    discounted_price numeric NOT NULL CHECK (discounted_price > 0),
    CHECK (price > discounted_price)
);
```

## UNIQUE

```sql
CREATE TABLE products (
    product_no integer CONSTRAINT must_be_different UNIQUE,
    name text,
    price numeric,
    UNIQUE (product_no)
);
```

### Multi

```sql
CREATE TABLE example (
    a integer,
    b integer,
    c integer,
    CONSTRAINT must_be_different UNIQUE (a, c)
);
```

## PK

```sql
product_no integer UNIQUE NOT NULL,
```

is the same as

```sql
product_no integer PRIMARY KEY,
```

### Multi

```sql
PRIMARY KEY (a, c)
```

## FK

```sql
product_no integer REFERENCES products (id)
```

### Multi

```sql
FOREIGN KEY (b, c) REFERENCES other_table (c1, c2)
```


### Rules

```sql
CREATE TABLE order_items (
    product_no integer REFERENCES products ON DELETE RESTRICT,
    order_id integer REFERENCES orders ON DELETE CASCADE,
    quantity integer,
    PRIMARY KEY (product_no, order_id)
);
```