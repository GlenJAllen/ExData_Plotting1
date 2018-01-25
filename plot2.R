source("pull_clean_data.R")

png("plot2.png")
plot(Date,
     Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()
