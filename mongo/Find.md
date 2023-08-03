# Find.md

## In [dates]

```js
db.users
.find( { createdAt : { $in : ["2023-06-07T17:55:03.088Z", "2023-06-09T09:32:32.530Z"] }, {_id: 1, address.city: 1}}
.limit(5)
```

## Sub doc exists

```js
db.users.find({ "address.city": {$exists: true}}).limit(2)
```
