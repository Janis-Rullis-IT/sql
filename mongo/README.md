# Mongo

```shell
mongo -u USER -p
db
show dbs
use DB_NAME
show collections
db.COLLECTION_NAME.find().limit(3).pretty()
db.COLLECTION_NAME.find({_id:12345}).pretty()

# Last https://stackoverflow.com/a/4425163
db.foo.find().sort({_id:1}).limit(10).pretty()
```
