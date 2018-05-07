# [How to copy rows, but change a few fields?](https://stackoverflow.com/a/2783162)

Example, copy one category's content to another.

## Test the select query

```sql
SELECT `content`,`category_id`,
FROM `posts`
WHERE `category_id` = 1
LIMIT 5;
```

## Put it into the insert query

```sql
INSERT INTO `posts` (`content`,`category_id`)
SELECT `content`, 2
FROM `posts`
WHERE `category_id` = 1
LIMIT 5;
```