# db/Dockerfile
FROM mysql:latest

WORKDIR /tmp/build
COPY test_db/employees.sql /tmp/build/
COPY test_db/*.dump /tmp/build/

# 1) Get the 'source ...' lines in order (strip CR if present)
# 2) 00_schema.sql = employees.sql minus all 'source ...' lines
# 3) 01_data.sql   = 'USE employees;' + each dump in the order from employees.sql
RUN awk '/^[[:space:]]*source[[:space:]]+/{print $2}' employees.sql | tr -d '\r' > /tmp/build/source.list \
 && sed '/^[[:space:]]*source[[:space:]]\+.*$/d' employees.sql > /docker-entrypoint-initdb.d/00_schema.sql \
 && ( echo 'USE employees;' > /docker-entrypoint-initdb.d/01_data.sql \
      && while read f; do cat "/tmp/build/$f" >> /docker-entrypoint-initdb.d/01_data.sql; echo >> /docker-entrypoint-initdb.d/01_data.sql; done < /tmp/build/source.list )

RUN ls -l /docker-entrypoint-initdb.d && head -n 25 /docker-entrypoint-initdb.d/01_data.sql
