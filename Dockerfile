FROM alpine

ARG PGBADGER_VER=12.2

RUN \
  apk update && \
  apk upgrade && \
  apk add perl && \
  apk add --virtual .build curl make && \
  curl -sL https://github.com/darold/pgbadger/archive/v${PGBADGER_VER}.tar.gz | tar zx && \
  ( \
    cd pgbadger-${PGBADGER_VER} && \
    perl Makefile.PL && \
    make install \
  ) && \
  rm -r pgbadger-${PGBADGER_VER} && \
  apk del --purge .build

ENTRYPOINT ["/usr/local/bin/pgbadger"]
CMD ["--help"]
