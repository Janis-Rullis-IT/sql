# Add auto-increment

```sql
ALTER TABLE `guests` ADD PRIMARY KEY (`id`);
ALTER TABLE `guests` CHANGE `id` `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT;
```
