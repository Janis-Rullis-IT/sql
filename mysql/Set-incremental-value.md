# Set incremental value

```
SET @i = 0;
UPDATE `page`
SET `sequence` = (@i := @i+1)
ORDER BY `id` ASC;
```
