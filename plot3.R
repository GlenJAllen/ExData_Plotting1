source("pull_clean_data.R")

png("plot3.png")
plot(Date,
     Sub_metering_1,
     xlab = "",
     ylab = "Energy sub metering",
     type = "l")
lines(Date,
      Sub_metering_2,
      col = "red")
lines(Date,
      Sub_metering_3,
      col = "blue")
legend("topright", legend = ls(pos = which(search() == "hpc")[1]) %>% .[grep("Sub", .)],
       col = c("black", "red", "blue"), lty = 1, cex = 0.8)
dev.off()
