# Unzip the downloaded file file
unzip("exdata_data_household_power_consumption.zip")


# Reads the data from the file
data<-read.table("household_power_consumption.txt",header=TRUE,sep=";")

#Filters the data for 2007-02-01 and 2007-02-02
subdata <- subset(data,data$Date=="1/2/2007" | data$Date =="2/2/2007")

png("plot1.png")
hist(as.numeric((subdata$Global_active_power)),col="red", main="Global Active Power",xlab="Global Active Power(kilowatts)")

# annotating graph
title(main="Global Active Power")

dev.off()

