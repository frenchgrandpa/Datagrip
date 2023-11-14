select e -> 'assetid' as s from trades,
    jsonb_array_elements(bot_items) e
where e ->> 'assetid' = '23671143869'
order by id desc

select id, user_id from bots where user_id is not null\
select count(*) from trades where created_at > now () - interval '1 month'

select e -> 'assetid' as s from trades,
jsonb_array_elements(bot_items) e
where user_id = 32177
order by id desc

select created_at, * from trades
where new_asset_ids is not null
and bot_id <= 20
and user_id != 30287
order by id desc
limit 30

select * from trades where user_id= 31211 order by created_at desc

select * from trades,
    jsonb_array_elements(bot_items) e
where e ->> 'assetid' = '29848459584'
order by id desc

select * from trades

select * from trades where user_id =13234 and bot_id = 153 order by id desc
select * from trades where user_id =32193
select * from trades where state = 6

select * from trades, jsonb_array_elements(bot_items) e
where e ->> 'assetid' in (
    '26328246252',
        '26316556591'


    )
order by id desc
-- enum TradeOfferState {
--     VERIFIED, 0
--     INVALID, 1
--     ACTIVE, 2
--     ACCEPTED, 3
--     COUNTERED, 4
--     EXPIRED, 5
--     CANCELED, 6
--     DECLINED, 7
--     INVALID_ITEMS, 8
--     CREATED_NEEDS_CONFIRMATION, 9
--     CANCELED_BY_SECOND_FACTOR, 10
--     IN_ESCROW 11
-- }

SELECT usename AS role_name,
       CASE
           WHEN usesuper AND usecreatedb THEN
               CAST('superuser, create database' AS pg_catalog.text)
           WHEN usesuper THEN
               CAST('superuser' AS pg_catalog.text)
           WHEN usecreatedb THEN
               CAST('create database' AS pg_catalog.text)
           ELSE
               CAST('' AS pg_catalog.text)
           END role_attributes
FROM pg_catalog.pg_user
ORDER BY role_name desc;

SELECT * from information_schema.table_privileges WHERE grantee = 'lukas';

select * from trades,
                                jsonb_array_elements(bot_items) e
where e ->> 'assetid' = '30139197975'
order by id desc


select steam_id from bots where csgo_item_count > 900


select * from trades where user_id = 33277
order by id desc


    3438
