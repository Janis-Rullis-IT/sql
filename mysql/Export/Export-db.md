# [Export and archive a MYSQL database](https://github.com/janis-rullis/shell-scripts/blob/master/export-mysql-db.sh)

## [Avoid table lock `--single-transaction=TRUE`](https://stackoverflow.com/a/104628)

```shell
mysqldump --single-transaction=TRUE -u username -p DB
```
