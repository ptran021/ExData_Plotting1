setwd("C:/Users/patri/Desktop/project1")
dat <- read.table("Household_power_consumption.txt",sep = ";",header = T,na.strings = "")


##subset data
dat <- dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
time <- strptime((paste(dat$Date,dat$Time, sep = " ")),"%d/%m/%Y %H:%M:%S")
dat["setTime"]
dat$setTime <- time

##plot 4 
labels <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
columnlines <- c("black","red","blue")
par(mfrow=c(2,2))
plot(dat$setTime, dat$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power")
plot(dat$setTime, dat$Voltage, type="l", col="black", xlab="datetime", ylab="Voltage")
plot(dat$setTime, dat$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(dat$setTime, dat$Sub_metering_2, type="l", col="red")
lines(dat$setTime, dat$Sub_metering_3, type="l", col="blue")
legend("topright", bty="n", legend=labels, lty=1, col=columnlines)
plot(dat$setTime, dat$Global_reactive_power, type="l", col="black", xlab="datetime", ylab="Global_reactive_power")
