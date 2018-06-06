# Encryption and Compression Functions

* [12.13 Encryption and Compression Functions](https://dev.mysql.com/doc/refman/5.5/en/encryption-functions.html)

## SHA1 / SHA

```sql
SELECT SHA1('abc'), LENGTH( SHA1('abc'))
```
> a9993e364706816aba3e25717850c26c9cd0d89d, 40

## MD5

```sql
SELECT MD5('testing'), LENGTH( MD5('testing'))
```
> ae2b1fca515949e5d54fb22b8ed95575, 32