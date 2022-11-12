# matsuu/pgbadger

Dockerfile for pgBadger

##  Usage

### Images

* Docker Hub: [matsuu/pgbadger](https://hub.docker.com/r/matsuu/pgbadger/)
* GitHub Container Registry: [ghcr.io/matsuu/pgbadger](https://hub.docker.com/r/matsuu/pgbadger/)

### PostgreSQL with default prefix

```
cat slow.log | docker run -i --rm matsuu/pgbadger - -o - -x html > out.html
```

### RDS for PostgreSQL

```
cat slow.log | docker run -i --rm matsuu/pgbadger -f rds - -o - -x html > out.html
```

### help

```
docker run -i --rm matsuu/pgbadger --help
```

## References

* [pgBadger official site](https://pgbadger.darold.net/)
* GitHub [matsuu/docker-pgbadger](https://github.com/matsuu/docker-pgbadger)
* Docker Hub [matsuu/pgbadger](https://hub.docker.com/r/matsuu/pgbadger/)
* GitHub Container Registry [ghcr.io/matsuu/pgbadger](https://hub.docker.com/r/matsuu/pgbadger/)
