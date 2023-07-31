# mongodump-mongorestore

## Back-up

```shell
mongodump -vvvvv --uri "mongodb://root:PASSSSSSSS@unique.us-west-1.docdb.amazonaws.com:27017/DBNAME" \
--ssl \
--sslCAFile=global-bundle.pem \
--collection=cars \
--query='{"createdAt": {"$gte":  {"$date":"2023-07-29T0:00:00.000Z"}}}' \
--gzip  \
--archive=./prod.cars.20230727-1.gz
```

## Restore

```shell
mongorestore \
--nsFrom="DBNAME.*" \
--nsTo="BU-DBNAME.*" \
--gzip \
--archive \
--archive=prod.cars.20230727-1.gz
```
