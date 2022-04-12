# SELECT

## Conditional column

* [IF](https://www.w3schools.com/sql/func_mysql_if.asp).

```sql
SELECT a.`appartment_id`, b.`appartment_id`, IF(a.`appartment_id` = b.`appartment_id`, a.`appartment_id`, b.`appartment_id`) as `current_appartment_id`
FROM `history` a
LEFT JOIN `present` b
ON a.`user_id` = b.`user_id`
LIMIT 10;
```
