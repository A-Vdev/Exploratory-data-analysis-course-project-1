# Unzip the downloaded file file
unzip("exdata_data_household_power_consumption.zip")

# Reads the data from the file
data<-read.table("household_power_consumption.txt",header=TRUE,sep=";")

#Filters the data for 2007-02-01 and 2007-02-02
subdata <- subset(data,data$Date=="1/2/2007" | data$Date =="2/2/2007")

DateTime<-as.POSIXct(paste(subdata$Date, subdata$Time), format="%d/%m/%Y %H:%M:%S")

png("plot2.png", width=480, height=480)

plot(DateTime,as.numeric(subdata$Global_active_power),
     type="l",xlab="",ylab="Global Active Power (kilowatts)") 
title(main="Global Active Power Vs Time")
dev.off()

