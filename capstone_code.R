ggplot(data=hourly_data_merged) +
  geom_point(aes(x=as.Date(ActivityHour), y=StepTotal))


sleep_per_day_average <- daily_activities_merged %>%
  filter(TotalSleepRecords == 1) %>%
  group_by(DayOfWeek) %>%
  summarise(mean(TotalMinutesAsleep))
View(sleep_per_day_average)

ggplot(data = activity_by_day) +
  geom_line(aes(x=DayOfWeek, y=here))


