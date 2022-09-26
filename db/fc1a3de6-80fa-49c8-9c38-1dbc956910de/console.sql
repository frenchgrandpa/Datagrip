SELECT * FROM average_high
left join average_rainy_days on average_high."Country" = average_rainy_days."Country" and average_high."City" = average_rainy_days."City"
left join average_low on average_low."Country" = average_high."Country" and average_low."City" = average_high."City"
left join mean_monthly_sunshine_hours on mean_monthly_sunshine_hours."Country" = average_high."Country" and mean_monthly_sunshine_hours."City" = average_high."City"
left join percent_possible_sunshine on percent_possible_sunshine."Country" = average_high."Country" and percent_possible_sunshine."City" = average_high."City"

  where (average_rainy_days."Year" < 135 or  average_rainy_days."Year" is null)
  and (mean_monthly_sunshine_hours."Year" > 1700 or mean_monthly_sunshine_hours."Year" is null)
  and (percent_possible_sunshine."Year" > 50 or percent_possible_sunshine."Year" is null)

  and average_high."Year" > 10
  and average_high."Jan" < 26
  and average_high."Feb" < 26
  and average_high."Mar" < 26
  and average_high."Apr" < 26
  and average_high."May" < 26
  and average_high."Jun" < 26
  and average_high."Jul" < 26
  and average_high."Aug" < 26
  and average_high."Sep" < 26
  and average_high."Oct" < 26
  and average_high."Nov" < 26
  and average_high."Dec" < 26

  and average_low."Year" < 22
  and average_low."Year" > 7
  and average_low."Jan" > 3
  and average_low."Feb" > 3
  and average_low."Mar" > 3
  and average_low."Apr" > 3
  and average_low."May" > 3
  and average_low."Jun" > 3
  and average_low."Jul" > 3
  and average_low."Aug" > 3
  and average_low."Sep" > 3
  and average_low."Oct" > 3
  and average_low."Nov" > 3
  and average_low."Dec" > 3

