# r-excercise-2
#This is another excercise from codecademy

library(readr)
library(dplyr)

orders <- read_csv("orders.csv")
page_visits <- read_csv("page_visits.csv")


head(orders)
head(page_visits)


average_price <- orders %>%
  summarize(mean_price = mean(price, na.rm = TRUE))

average_price



click_source <- page_visits %>%
  group_by(utm_source) %>%
  summarize(count = n())

click_source


click_source_by_month <- page_visits %>%
  group_by(utm_source, month) %>%
  summarize(count = n())

click_source_by_month
