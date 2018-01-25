source("pull_clean_data.R")

plot(Date,
     Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
ggsave("plot2.png")
