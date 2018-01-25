source("pull_clean_data.R")
library(purrr)

plot_w <- partial(plot, x = Date, type = "l")
plot_w_dt <- partial(plot_w, xlab = "datetime")
plot_w_n <- partial(plot_w, xlab = "")

png("plot4.png")
par(mfrow = c(2, 2))
plot_w_n(y = Global_active_power, ylab = "Global Active Power")
plot_w_dt(Voltage)
plot_w_n(Sub_metering_1, ylab = "Energy sub metering")
lines(Date, Sub_metering_2, col = "red")
lines(Date, Sub_metering_3, col = "blue")
legend("topright", legend = names(household.power.consumption) %>% .[grep("Sub", .)],
       col = c("black", "red", "blue"), lty = 1, cex = 0.8, bty = "n")
plot_w_dt(Global_reactive_power)
dev.off()
