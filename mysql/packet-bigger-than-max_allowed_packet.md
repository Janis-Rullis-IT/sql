# [packet-bigger-than-max_allowed_packet.md](https://stackoverflow.com/a/104176)

```shell
mysql -u -p
```

```shell
set global net_buffer_length=1000000; 
set global max_allowed_packet=1000000000;
```
