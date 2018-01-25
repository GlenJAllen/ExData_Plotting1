source("pull_clean_data.R")

hist(Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
ggsave("plot1.png")
