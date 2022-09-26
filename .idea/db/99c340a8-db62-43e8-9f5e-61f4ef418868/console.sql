select e -> 'assetid' as s from trades,
    jsonb_array_elements(bot_items) e
where e ->> 'assetid' = '26563777681'
order by id desc

select id, user_id from bots where user_id is not null\
select count(*) from trades where created_at > now () - interval '1 month'

select e -> 'assetid' as s from trades,
jsonb_array_elements(bot_items) e
where user_id = 22176
order by id desc

select created_at, * from trades
where new_asset_ids is not null
and bot_id <= 20
and user_id != 2373
order by id desc
limit 30


select * from trades,
    jsonb_array_elements(bot_items) e
where e ->> 'assetid' = '26563777681'
order by id desc

select * from trades

select * from trades where user_id =13234 and bot_id = 153 order by id desc
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