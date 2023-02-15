select * from users where id = 15644
select * from users where trade_url like 'https://steamcommunity.com/tradeoffer/new/?partner=399670282&token=K38xhkwa'

select users.* from users
                        inner join security_info si on users.security_info_id = si.id
                        inner join user_info ui on users.user_info_id = ui.id
where email ilike 'vativsacc@gmail.com'

select users.id, first_name ||  ' '  ||  last_name from users
inner join user_info ui on users.user_info_id = ui.id
where users.id in ( 12880     )

select i.* from user_info i
inner join users u on i.id = u.user_info_id
where u.id = 25308

select s.* from security_info s
inner join users u on s.id = u.security_info_id
where u.id = 23216


select * from tracking_codes where owner_id = 108
select * from tracking_codes where code = 'SKOOBY'

select name, item_transactions.* from item_transactions
inner join item_specs i on item_transactions.item_spec_id = i.id
where buyer_id=26716 or seller_id = -1
order by id desc
select * from item_specs where id = 1987

select * from balance_transactions where user_id = 28378 and reason > -1 order by id desc
select * from users where steam_id = '76561198800686225'
select * from users where id = 28772
select * from users where merged_to = 10629

select * from users order by balance desc
select * from item_transactions where asset_id in (


    )



select * from item_transactions where buy_listing_id = 913853


select * from item_transactions where seller_id = 31227 or buyer_id = 31227 order by id desc
select * from item_transactions where asset_id = '26563777681' order by id desc
SELECT * from sell_listings where owner_id = 11699
SELECT * from sell_listings where item_id = 3798908
select * from buy_listings where owner_id = 24072
select * from security_info where id = 2948
select * from item_specs where id = 3173
select * from balance_transactions where user_id =17692


select * from items where id= 22823141
select * from sell_listings where item_id= 22823141
select name, items.* from items inner join item_specs i on i.id = items.item_spec_id  where owner_id= 28378 -- and in_use = false and (unlocking_time < now() or unlocking_time is null)
select i.name, items.* from items
inner join item_specs i on i.id = items.item_spec_id
where owner_id = 12177 and (unlocking_time is null or unlocking_time < now()) and in_use = false
select * from items where asset_id = '4201329643470362937'
select * from items where owner_id = 27227
select * from items where id in (17797511,17797540,17797539,17797538,17797537,17797536,17797535,17797534,17797533,17797532,17797531,17797530,17797529,17797528,17797527,17797526,17797525,17797524,17797523,17797522,17797521,17797520,17797519,17797518,17797517,17797516,17797515,17797514,17797513,17797512,17797541,17797542)
1259



select * from item_specs where id = 24277
select * from item_specs where name = 'M4A1-S | Guardian (Minimal Wear)'
select * from item_specs where name ilike '%doppler%'

select * from item_transactions where asset_id = '27517982665'

select * from items inner join users u on items.owner_id = u.id
where trade_url like 'https://steamcommunity.com/tradeoffer/new/?partner=1246718753&token=musRxVfU'

select sell_listings.* from sell_listings
                                inner join items i on sell_listings.item_id = i.id
where item_spec_id = 12837 and status = 0;

select * from items where item_spec_id =12837
select * from items where asset_id ='231231231'
select * from users where id = 11295

select referer, * from users u
                     inner join security_info si on u.security_info_id = si.id
                     left join user_info ui on u.user_info_id = ui.id
inner join tracking_info ti on u.tracking_info_id = ti.id
where u.id = 21938


select * from items where owner_id = 20379
--                       and app_id = 252490
                      and in_use = true
                      and id not in (
        select item_id
        from sell_listings
        where sell_listings.owner_id = 20379
          and status = 0
    )

select * from balance_transactions where reason = 16 order by id desc

select * from sell_listings inner join items i on sell_listings.item_id = i.id where i.item_spec_id = 5658

select * from balance_transactions where user_id = 10891 order by id desc

select * from sell_listings where status = 0 and item_id = 23831939


select * from items where owner_id = 4853
                      and app_id = 730
                      and in_use = false


select distinct on (buy_listings.id)
    buy_listings.id, sell_listings.id, buy_listings.buy_price, sell_listings.buy_price
from sell_listings
         inner join items on items.id = sell_listings.item_id
         inner join buy_listings on items.item_spec_id = buy_listings.item_spec_id
where buy_listings.status = 0
  and sell_listings.status = 0
  and buy_listings.buy_price > sell_listings.buy_price

select * from balance_transactions where user_id = 3460


select * from buy_listings b
                  inner join item_specs sp on b.item_spec_id = sp.id
                  inner join recent_pricing_info rpi on sp.pricing_info_id = rpi.id
where b.status = 0
  and b.buy_price <= rpi.min

SELECT DISTINCT ON (i.item_spec_id)
    l.*
FROM sell_listings as l
         join items i on l.item_id = i.id
WHERE l.status = 0
  and i.item_spec_id = 559
order by i.item_spec_id, l.buy_price





select buyer_id, sum(buy_price), count(*) from item_transactions where buyer_id >= 108 and item_transactions.bot_id > 20 and asset_id in (
    select items.asset_id from items where in_use = false
                                       and owner_id >= 108
                                       and owner_id != 169
                                       and items.bot_id > 20
                                       and unlocking_time < now() - interval '0 days'
)
group by buyer_id




select i.name, count(*) from items
                                 inner join item_specs i on items.item_spec_id = i.id
where owner_id = 161
  and i.app_id = 252490
group by i.name



select * from items where owner_id = 161
                      and app_id = 252490

select * from sell_listings

SELECT DISTINCT ON (item_spec_id)
    *
FROM buy_listings
WHERE status = 0
  AND item_spec_id in (7254)
order by item_spec_id desc, buy_price desc

select * from items i where
        i.owner_id < 108
                        and i.id not in (
        select s.item_id from
            sell_listings s
        where s.owner_id < 108
          and s.status = 0
    )


select * from items i
                  inner join item_specs s on i.item_spec_id = s.id
where
        i.app_id = 730
  and i.inspect_id is not null
  and wear_float is null
  and type != 'Sticker'
  and type != 'Graffiti'
  and type != 'Collectible'
  and type != 'Agent'
  and type != 'Patch'


select count(*) from users
                         inner join tracking_info ti on users.tracking_info_id = ti.id
where join_date > now() - interval '1 week'

select referer, count(distinct u.id) as user_count, count(*) as sale_count, round(avg(buy_price / 100), 2) as avg, round(sum(buy_price / 100), 2) as sum from tracking_info
                                                                                                                                                                  inner join users u on tracking_info.id = u.tracking_info_id
                                                                                                                                                                  inner join item_transactions it on u.id = it.seller_id
where seller_id >= 108 and seller_id != 169
group by referer

select asset_id, count(*) from item_transactions
where seller_id = 8343
group by asset_id having count(*) > 1


select sum(buy_price-sell_price) / 100 from item_transactions where is_tradeit_deposit = false and sell_price > buy_price * 0.95

select * from items i
                  inner join item_specs isp on i.item_spec_id = isp.id
where name = 'Alien Red' and owner_id > 169
select * from items where owner_id = 8343


select rpi.popularity, i.name, similarity(lower(name), lower('m4a4'))
from item_specs i
inner join recent_pricing_info rpi on rpi.id = i.pricing_info_id
order by similarity(lower(name), lower('m4a4')) desc, popularity desc
limit 5

select sum(change) from balance_transactions where user_id = 8343 and(reason = 6 or reason = 0)
select * from item_transactions where buyer_id = 8343 or seller_id = 8343 order by id desc
select * from items where owner_id = 8343


select * from balance_transactions where user_id = 6164
select * from item_transactions where asset_id = '19198991529'
select * from items where owner_id = 169

select sum(buy_price-sell_price) from item_transactions where buyer_id > 109 and buyer_id != 169 and buyer_id != 2373 and sell_price > buy_price * 0.9

select join_date::date, count(*) from users
inner join tracking_info ti on ti.id = users.tracking_info_id
where referer = 'rust_buy'
order by join_date desc

select sum(buy_price) * 0.01 * 0.01 from item_transactions
where seller_id < 108
and buyer_id > 108

select * from tracking_info
inner join users u on tracking_info.id = u.tracking_info_id
where referer = 'PRINCEV'
and u.id in (select user_id from balance_transactions)
and join_date > date '1 jul 2020'

select timestamp::date, count(*), sum(buy_price) from item_transactions
where buyer_id > 108
and is_tradeit_deposit = false
and timestamp > now() - interval '2.5 months'
group by timestamp::date
order by timestamp::date asc

select * from tracking_info
inner join users u on tracking_info.id = u.tracking_info_id
where u.id in (select user_id from balance_transactions)
order by tracking_info.id desc

select sum(buy_price) from item_transactions
inner join item_specs i on i.id = item_transactions.item_spec_id
where app_id > 1000 and timestamp >= date 'oct 1 2020' and is_tradeit_deposit = false

select referer, count(*) from users u
inner join tracking_info ti on u.tracking_info_id = ti.id
where u.id in (select user_id from balance_transactions)
and join_date > now() - interval '30 days'
group by referer

--274 - 1065 - 26% | Last year
--117 - 1561 - 7% | Before 7 oct
--112 - 960 - 11% | Since 7 oct (Stripe integration)
--64 - 532 - 12% | Since 13 oct (RUST Landing page)
--9 - 130 - 7% | Since 20 oct (CSGO, DOTA Google ads + Landing)
select count(*) from tracking_info
inner join users u on tracking_info.id = u.tracking_info_id
where join_date > date '20 oct 2021'
--  and u.id in (select user_id from balance_transactions)


select * from users where id  = 25795

select * from items where owner_id in (select id from users where banned = true)

select * from sell_listings where item_id = 17327233


select sum(a.sell_price) * 0.01 from item_transactions as a
inner join item_transactions as b
on a.asset_id = b.asset_id and b.timestamp > a.timestamp
where a.buyer_id in (108)
and b.seller_id = 108
and b.is_tradeit_deposit = false
and a.is_tradeit_deposit = false
and b.timestamp > date '1 sep 2021'

select count(*) from tracking_info
where join_date < tracking_info.last_login_date - interval '1 month'
and last_login_date > now () - interval '4 weeks'


select timestamp::date, count(*), sum(buy_price) * 0.01, sum(buy_price-sell_price) * 0.01 from item_transactions where is_tradeit_deposit = false
and timestamp > '1 jan 2021'
group by timestamp::date
order by timestamp::date desc

select avg(sum) from (
                  select sum(buy_price - item_transactions.sell_price) * 0.01 as sum
                  from item_transactions
                  where is_tradeit_deposit = false and timestamp > date '1 aug 2021'
--                     and buyer_id not in (169, 108, 109)
                  and seller_id not in (169,108,109)
                  group by seller_id
              ) as g


select referer, count(*) from tracking_info group by referer


select * from tracking_info where referer = 'skinsnipe'

select sum(buy_price - sell_price) from item_transactions where buyer_id in (select users.id from users inner join tracking_info ti on users.tracking_info_id = ti.id where referer = 'skinsnipe')

select * from sell_listings where item_id =19971140

select * from items  inner join sell_listings sl on items.id = sl.item_id where asset_id in (

'25987502043',
'25988275737',
'25999345410',
'26000085092'
    )


select first_name || ' ' || last_name, u.id, address1, address2, zip_code, city, country, email from users u
inner join user_info ui on u.user_info_id = ui.id
inner join security_info si on u.security_info_id = si.id
where u.id in (
868,
4286,
12583,
16179,
22949,
24685,
25525,
25903,
28358,
28978,
29602,
29646,
29826,
29915,
29991,
30030,
30125,
30139,
30144,
30234,
30282,
30319,
30426,
30491,
30512,
30533,
30574,
30602,
30686,
30780,
30810,
30811,
30860

    )

select  date_trunc('month', timestamp) AS month, app_id, sum(buy_price / 100.0) from item_transactions inner join item_specs i on i.id = item_transactions.item_spec_id
where timestamp > now() - interval '24 month' and is_tradeit_deposit = false
                              group by month, app_id
order by month desc



select sum(buy_price / 100.0) from item_transactions
where is_tradeit_deposit = false
  and item_transactions.timestamp > now() - interval '4 months'
  and seller_id > 108 and seller_id in (
    1,
        2,
3,
4,
5,
6,
7,
8,
9,
10,
11,
12,
13,
14,
15,
16,
17,
18,
19,
20,
21,
22,
23,
24,
25,
26,
27,
28,
29,
30,
31,
32,
33,
34,
35,
36,
37,
38,
39,
40,
41,
42,
43,
44,
45,
46,
47,
48,
49,
50,
51,
52,
53,
54,
55,
56,
57,
58,
59,
60,
61,
62,
63,
64,
65,
66,
67,
68,
69,
70,
71,
72,
73,
74,
75,
76,
77,
78,
79,
80,
81,
82,
83,
84,
85,
86,
87,
88,
89,
90,
91,
92,
93,
94,
95,
96,
97,
98,
99,
100,
101,
102,
103,
104,
105,
106,
107,
15615,
15616,
15617,
15618,
15619,
15620,
15621,
15622,
15623,
15624,
15625,
15626,
15627,
15628,
15629,
15630,
15631,
15632,
15633,
15634,
15635,
15636,
15637,
15638,
15639,
15640,
15641,
15642,
15643,
15644,
15645,
15646,
15647,
15648,
15649,
15650,
15651,
15652,
15653,
15654,
15655,
15656,
15657,
15658,
15659,
19165,
19166,
19167,
19168,
19169,
19170,
19171,
19172,
19173,
19174,
19175,
19176,
19177,
19178,
19179,
19180,
19181,
19182,
19183,
19184,
19185,
19186,
19187,
19188,
19189,
19190,
19191,
19192,
19193,
19194,
19195,
19196,
19197,
19198,
19199,
19200,
19201,
19202,
19203,
19204,
19205,
19206,
19207,
19208,
19209,
19210,
19211,
19212,
19213,
19214,
19215,
19216,
19217,
19218,
19219,
19220,
19221,
19222,
19223,
21676,
21677,
31122,
31123,
31124,
31125,
31126,
31127,
31128,
31129,
31130,
31131,
31132,
31133,
31134,
31135,
31136,
31137,
31138,
31139,
31140,
31141,
31142,
31143,
31144

    )


select * from sell_listings
         inner join items i on sell_listings.item_id = i.id
         where i.bot_id < 20
and creation_time > now() - interval '2 months'
and i.owner_id != 108


select email, first_name || ' '|| user_info.last_name from user_info
         inner join users u on user_info.id = u.user_info_id
                                               inner join security_info si on u.security_info_id = si.id
         where u.id in (4286,
    16179,
16179,
28978,
29915,
29915,
29991,
29991,
29991,
29991,
30686,
30686,
30810,
30810,
30810,
31229
    )

