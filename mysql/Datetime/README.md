# Datetime

## After a specific date

```sql
SELECT *
FROM `logs`
WHERE `created_at` > '2018-09-01'
```

## [Find in a time range](https://stackoverflow.com/a/14104364)

* [Date and Time Functions (dev.mysql.com)](https://dev.mysql.com/doc/refman/5.5/en/date-and-time-functions.html)

```sql
SELECT *
FROM `logs`
WHERE `created_at`
BETWEEN '2018-10-25 00:00:00' AND '2018-10-25 23:59:59'
ORDER BY `id` ASC
LIMIT 100;
```

## Find using INTERVAL

* [MYSQL query / dates older than 1 week ago (all datetimes in UTC) (stackoverflow.com)](https://stackoverflow.com/a/3600537)
* [MySQL Interval (mysqltutorial.org)](http://www.mysqltutorial.org/mysql-interval/)

```sql
SELECT * FROM tbl WHERE datetime < NOW() - INTERVAL 1 WEEK
```

```
unit 	expr 
DAY	DAYS
DAY_HOUR	‘DAYS HOURS’
DAY_MICROSECOND	‘DAYS HOURS:MINUTES:SECONDS.MICROSECONDS’
DAY_MINUTE	‘DAYS HOURS:MINUTES’
DAY_SECOND	‘DAYS HOURS:MINUTES:SECONDS’
HOUR	HOURS
HOUR_MICROSECOND	‘HOURS:MINUTES:SECONDS.MICROSECONDS’
HOUR_MINUTE	‘HOURS:MINUTES’
HOUR_SECOND	‘HOURS:MINUTES:SECONDS’
MICROSECOND	MICROSECONDS
MINUTE	MINUTES
MINUTE_MICROSECOND	‘MINUTES:SECONDS.MICROSECONDS’
MINUTE_SECOND	‘MINUTES:SECONDS’
MONTH	MONTHS
QUARTER	QUARTERS
SECOND	SECONDS
SECOND_MICROSECOND	‘SECONDS.MICROSECONDS’
WEEK	WEEKS
YEAR	YEARS
YEAR_MONTH	‘YEARS-MONTHS’
```

## Find users that have registered on this date

```sql
SELECT * FROM users WHERE MONTH(`created_at`) = MONTH(NOW()) AND DAY(`created_at`) = DAY(NOW());
```
