# RAND() UUID()

## UUID_SHORT()

```sql
SELECT UUID_SHORT();
```
> 97778730717413376

## UUID()

```sql
SELECT UUID();
```
> 021f389e-954e-11e8-a628-0242ac120007

## RAND()

```sql
SELECT RAND();
```
> 0.056898382545354204


## [MySQL secure random string generator (dba.stackexchange.com)](https://dba.stackexchange.com/a/132014)

```sql
SELECT HEX(SHA2(CONCAT(NOW(), RAND(), UUID()), 512));
```
> 3939303963643635633335366335653630646364653762366331663430663236393438323962323234663239636132376236396561666638396263303338353636306330313363326339323165396462306237666336363631313463663334326539323061633637303337633535666233313237383238643237646238663334


## [MySQL: create random data text strings (www.sixarm.com)](http://www.sixarm.com/about/mysql-create-random-data-text-strings.html)

```sql
select conv(floor(rand() * 99999999999999), 20, 36) ;
```
> 50S3M139074T

## [How do I generate a unique, random string for one of my MySql table columns?](https://stackoverflow.com/a/39259742)

```sql
select lpad(conv(floor(rand()*pow(36,8)), 10, 36), 8, 0) as rnd_str_8;
```
> -- output example: 3AHX44TF

```sql
select concat(
    lpad(conv(floor(rand()*pow(36,8)), 10, 36), 8, 0),
    lpad(conv(floor(rand()*pow(36,8)), 10, 36), 8, 0),
    lpad(conv(floor(rand()*pow(36,8)), 10, 36), 8, 0),
    lpad(conv(floor(rand()*pow(36,8)), 10, 36), 8, 0)
) as rnd_str_32;
```
> -- output example: KGC8A8EGKE7E4MGD4M09U9YWXVF6VDDS

## [Generating a random & unique 8 character string using MySQL (stackoverflow.com)](https://stackoverflow.com/questions/16737910/generating-a-random-unique-8-character-string-using-mysql)

```sql
NSERT INTO vehicles VALUES (blah); -- leaving out the number plate
SELECT @lid:=LAST_INSERT_ID();
UPDATE vehicles SET numberplate=concat(
          substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@lid)*4294967296))*36+1, 1),
          substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),
          substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),
          substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),
          substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),
          substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),
          substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),
          substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1)
         )
 WHERE id=@lid;
```

```sql
DO
    SELECT LEFT(UUID(), 8) INTO @plate;
    INSERT INTO plates (@plate);
WHILE there_is_a_unique_constraint_violation
-- @plate is your newly assigned plate number
```