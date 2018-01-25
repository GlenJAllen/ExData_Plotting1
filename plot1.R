source("pull_clean_data.R")

png("plot1.png")
hist(Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()
