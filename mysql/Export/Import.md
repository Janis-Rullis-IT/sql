# Import

## [Ignore already existing tables](https://stackoverflow.com/a/24140395)

```shell
cat db_dump_sql | sed "s/CREATE TABLE /CREATE TABLE IF NOT EXISTS /g" | mysql -uroot -p my_database_name
```

## [Exclude](https://www.commandlinefu.com/commands/view/17466/exclude-inserting-a-table-from-a-sql-import)

```shell
sed '/INSERT INTO `users`/d' a.sql > b.sql
sed '/INSERT INTO `posts`/d' b.sql > c.sql
```