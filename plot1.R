library(datasets)
source("load_data.R")
png(filename="plot1.png", width=480, height=480, units="px")
par(mfrow = c(1, 1))
hist(data_s$Global_active_power, 
     col="red", 
     xlab="Global Active Power (kilowatts)", 
     ylab="Frequency",
     main = "Global Active Power")
dev.off()