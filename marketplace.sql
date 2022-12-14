select * from crypto_payments order by id desc
select * from assigned_crypto_addresses where owner_id = 28131
select * from assigned_crypto_addresses where address = '3QzYsR1JGZiSfd6UR1EkwFwyrsmAvBStAH'
select * from g2a_payments order by id desc
select * from sepa_payouts where owner_id = 16179
select * from sepa_payouts where completed = false
select * from paypal_payouts where completed = false
select * from paypal_payouts order by id desc
select * from alpha_po_payments order by id desc
select * from alpha_po_payments where completed = true and owner_id = 17692  order by id desc
select * from crypto_payments where transaction_id = '0x93621e0b4198d635f54388625a38c4c228e96ba1af308939a17a215fd49632c2'
select * from crypto_payments where owner_id = 13171
select * from crypto_payouts where owner_id = 15935
select * from crypto_payments
inner join assigned_crypto_addresses aca on crypto_payments.owner_id = aca.owner_id
where address = '0xd7ecea190cab2404ec76433a20c6a38ee0a98cf8'


select * from card_payments where owner_id = 13171

select * from sepa_payouts where completed = false order by owner_id

select * from stripe_payments where owner_id = 10629
select * from stripe_payments where transaction_id = 'pi_1Hjw56CsnIAZFzsvVlVHFx5y'

select * from assigned_crypto_addresses

select completed_at::date, sum(balance), count(*) from g2a_payments
where status = 'complete'
group by completed_at::date
order by completed_at desc

select payment_method, sum(balance), count(*)  from g2a_payments
where status = 'complete' group by payment_method

select * from assigned_crypto_addresses where address = '3H1yHBRvzF8gehuadR4N41dz2GHa85Hr1F'

select * from crypto_payouts
where type = 0
order by id desc



select floor(marge_met_btw) as marge_met_btw, floor(marge_met_btw - btw) as marge_zonder_btw, floor(btw) as btw
from (
    select marge as marge_met_btw, marge * (21.0/121.0) as btw
    from (
        select sum(amount) * 0.15 marge
        from card_payments
        where country = 'NL'
        and completed = true
        and completed_at > date '1 apr 2022'
        and completed_at < date '1 jul 2022'
    ) as x
) as y

select round(sum(case when method = 0 then (amount - 0.30) * 0.971 when method = 1 then amount - 0.35 end) * 0.05) marge
from stripe_payments
where completed = true
and completed_at > date '1 oct 2020'
and completed_at < date '1 jan 2021'
and country in (
        'BE',
        'BG',
        'CZ',
        'DK',
        'DE',
        'EE',
        'IE',
        'EL',
        'ES',
        'FR',
        'HR',
        'IT',
        'CY',
        'LV',
        'LT',
        'LU',
        'HU',
        'MT',
        'NL',
        'AT',
        'PL',
        'PT',
        'RO',
        'SI',
        'SK',
        'FI',
        'SE'
    )


select type, sum(balance * 0.01), avg(balance * 0.01), count(*)from crypto_payments where completed_at > date '1 jan 2021' group by type
select type, sum(balance * 0.01), avg(balance * 0.01), count(*) from crypto_payouts where created_at > date '1 jan 2021' group by type

select * from crypto_payments where completed_at < date '1 sept 2020' and completed_at > date '1 aug 2020'


