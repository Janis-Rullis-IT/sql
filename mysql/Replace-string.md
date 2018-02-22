# [Replace string](https://stackoverflow.com/a/14586441)

```
UPDATE `page`
SET `dir` = REPLACE(`dir`, '/eng', '/eng/')
WHERE `dir` LIKE '%/eng%';
```
