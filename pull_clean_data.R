library(data.table)
library(dplyr)

# Assumes you've already downloaded the data and have it in this folder
suppressMessages(fread("household_power_consumption.txt", na.strings = "?") %>%
                   mutate(Date = as.Date(Date, "%d/%m/%Y")) %>%
                   filter(between(Date, as.Date("2007-02-01"), as.Date("2007-02-02"))) %>%
                   attach())

Date <- strptime(paste(Date, Time), "%Y-%m-%d %H:%M:%S")
