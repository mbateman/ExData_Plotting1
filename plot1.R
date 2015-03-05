library(datasets)
source("load_data.R")
png(filename="plot1.png", width=480, height=480, units="px")
hist(data_s$Global_active_power, 
     col="red", 
     xlab="Global Active Power (kilowatts)", 
     ylab="Frequency")
dev.off()