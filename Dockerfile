FROM alpine

ARG PGBADGER_VER=12.4

RUN \
  apk update && \
  apk upgrade && \
  apk add perl && \
  apk add perl-text-csv_xs && \
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
