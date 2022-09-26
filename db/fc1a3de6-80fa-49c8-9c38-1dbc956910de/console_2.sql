SELECT * FROM average_high
left join average_rainy_days on average_high."Country" = average_rainy_days."Country" and average_high."City" = average_rainy_days."City"
where average_high."City" = 'Porto'
and (average_rainy_days."Year" < 120 or average_rainy_days."Year" is null)