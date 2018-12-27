# Clients

```yml
    elixir-pgadmin:
      container_name: elixir-pgadmin
      image: dpage/pgadmin4:latest
      restart: unless-stopped
      depends_on:
        - elixir-postgres
      ports:
        - "5050:80"
      volumes:
        - /data/pgadmin:/root/.pgadmin
      environment:
        PGADMIN_DEFAULT_EMAIL: $PGADMIN_EMAIL
        PGADMIN_DEFAULT_PASSWORD: $POSTGRES_PASSWORD
      networks:
            elixir-net:
                ipv4_address: 172.60.1.16
```

```
PGADMIN_EMAIL=FILL@THIS.local
```

```shell
docker-compose up
```

## Open in a browser

* http://172.60.1.16