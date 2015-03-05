library(datasets)
source("load_data.R")
datetime <- as.POSIXct(data_s$datetime)
png(filename="plot2.png", width=480, height=480, units="px")
plot(datetime, 
     data_s$Global_active_power, 
     type="l", 
     ylab="Global Active Power (kilowatts)")
dev.off()