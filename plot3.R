library(datasets)
source("load_data.R")
datetime <- as.POSIXct(data_s$datetime)
png(filename="plot3.png", width=480, height=480, units="px")
plot(datetime, data_s$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(datetime, data_s$Sub_metering_2, col="red")
lines(datetime, data_s$Sub_metering_3, col="blue")
legend("topright", lty=c(1,1), 
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()