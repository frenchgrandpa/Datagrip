SELECT datname, pid, state, query, age(clock_timestamp(), query_start) AS age
FROM pg_stat_activity
WHERE state <> 'idle'
  AND query NOT LIKE '% FROM pg_stat_activity %'
ORDER BY age;

SELECT
    schema_name,
    relname,
    pg_size_pretty(table_size) AS size,
    table_size

FROM (
    SELECT
    pg_catalog.pg_namespace.nspname           AS schema_name,
    relname,
    pg_relation_size(pg_catalog.pg_class.oid) AS table_size

    FROM pg_catalog.pg_class
    JOIN pg_catalog.pg_namespace ON relnamespace = pg_catalog.pg_namespace.oid
    ) t
WHERE schema_name NOT LIKE 'pg_%'
ORDER BY table_size DESC;

select schema_name
from information_schema.schemata;

GRANT SELECT ON ALL TABLES IN SCHEMA timescaledb_experimental TO grafana;
ALTER DEFAULT PRIVILEGES IN SCHEMA timescaledb_experimental
    GRANT SELECT ON TABLES TO grafana;


SELECT pg_size_pretty(pg_database_size('books'));


VACUUM FULL Analyze;

VACUUM full spread_logs;




