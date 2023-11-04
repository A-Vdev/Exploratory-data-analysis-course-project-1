# Reads the data from the file
data<-read.table("household_power_consumption.txt",header=TRUE,sep=";")

#Filters the data for 2007-02-01 and 2007-02-02
subdata <- subset(data,data$Date=="1/2/2007" | data$Date =="2/2/2007")

DateTime<-as.POSIXct(paste(subdata$Date, subdata$Time), format="%d/%m/%Y %H:%M:%S")


png("plot3.png")
plot(DateTime, as.numeric(subdata$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")
lines(DateTime, as.numeric(subdata$Sub_metering_2), type='l', col='red')
lines(DateTime, as.numeric(subdata$Sub_metering_3), type='l',col='blue')

legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
title(main="Energy sub-metering")
dev.off()