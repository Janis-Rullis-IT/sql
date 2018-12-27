# Install Postgres

* https://docs.docker.com/samples/library/postgres/

```yml
elixir-postgres:
        container_name: elixir-postgres
        image: 'postgres:latest'
        restart: unless-stopped
        ports:
            - '$POSTGRES_PORT:$POSTGRES_PORT'
        volumes:
            - type: bind
              source: $POSTGRES_DIR
              target: /var/lib/postgres
        environment:
            POSTGRES_USER: $POSTGRES_USER
            POSTGRES_PASSWORD: $POSTGRES_PASSWORD
        networks:
            elixir-net:
                ipv4_address: 172.60.1.15
```

```
POSTGRES_USER=FILL_THIS
POSTGRES_PASSWORD=FILL_THIS
POSTGRES_DIR=./db/postgres
POSTGRES_PORT=5432
```