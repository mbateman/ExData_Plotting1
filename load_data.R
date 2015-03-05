data = read.table("household_power_consumption.txt", 
  sep=";", dec=".", header=TRUE, stringsAsFactors=FALSE, 
  na.strings="?", colClasses=c(rep("character",2), rep("numeric",7)))
data_s<-data[(data$Date=="1/2/2007" | data$Date=="2/2/2007" ),]
data_s$DateTime<-strptime(paste(data_s$Date,data_s$Time),"%d/%m/%Y %H:%M:%S")