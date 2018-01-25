library(data.table)
library(tidyverse)
library(magrittr)

setwd("C:/Users/u55a20/Downloads/jhu_eda")

household.power.consumption <- fread("household_power_consumption.txt",
                                     na.strings = "?")

household.power.consumption %<>% mutate(Date = as.Date(Date, "%d/%m/%Y")) %>%
  filter(between(Date, as.Date("2007-02-01"), as.Date("2007-02-02")))

invisible(attach(household.power.consumption))

Date <- strptime(paste(household.power.consumption$Date,
                       household.power.consumption$Time),
                 "%Y-%m-%d %H:%M:%S")