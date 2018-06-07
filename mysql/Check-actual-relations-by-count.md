```
SELECT COUNT(*)
FROM `static` a;
```

```
SELECT COUNT(*)
FROM `static` a
JOIN `_st` b
ON a.`cat_id` = b.`id`;
```
