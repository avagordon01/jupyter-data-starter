#!/usr/bin/env bash

set -eu

sudo su postgres <<EOF
initdb --locale=C.UTF-8 --encoding=UTF8 -D /var/lib/postgres/data
EOF

sudo systemctl enable --now postgresql.service

createuser --role=ava --superuser
createdb testdb
pgbench -i testdb
