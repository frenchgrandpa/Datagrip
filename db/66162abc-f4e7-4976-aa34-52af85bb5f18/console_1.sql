select t1.datname AS db_name,
       pg_size_pretty(pg_database_size(t1.datname)) as db_size
from pg_database t1
order by pg_database_size(t1.datname) desc;


select * from ticker_logs where inserted_at < '2022-08-01 20:31:29.089648 +00:00'

select distinct tag from liquidity_logs where timestamp > now () - interval '15 min'
