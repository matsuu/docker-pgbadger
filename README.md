# matsuu/pgbadger

Dockerfile for pgBadger

##  Usage

### PostgreSQL with default prefix

```
cat slow.log | docker run -i --rm matsuu/pgbadger - -o - -x html > out.html
```

### RDS for PostgreSQL

```
cat slow.log | docker run -i --rm matsuu/pgbadger --prefix "%t:%r:%u@%d:[%p]:" - -o - -x html > out.html
```

## References

* [pgBadger official site](https://pgbadger.darold.net/)
- GitHub [matsuu/docker-pgbadger](https://github.com/matsuu/docker-pgbadger)
- Docker Hub [matsuu/pgbadger](https://hub.docker.com/r/matsuu/pgbadger/)
