# DB-Beaver.md

## Fix Permission Denied for SSH tunnel

```shell
chmod 600 id_rsa
```

### For snap

* In the snap store, select permisisons for the app.
* Maybe move the id_rsa to snap/db-beaver/.ssh/id_rsa.
* If this does not help then uninstall the snap version and install the standalone.

