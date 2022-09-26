select * from marketplace.public.users
inner join trades.public.trades on users.id = trades.user_id