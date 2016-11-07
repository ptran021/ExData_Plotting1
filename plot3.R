setwd("C:/Users/patri/Desktop/project1")
dat <- read.table("Household_power_consumption.txt",sep = ";",header = T,na.strings = "")


##subset data
dat <- dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
time <- strptime((paste(dat$Date,dat$Time, sep = " ")),"%d/%m/%Y %H:%M:%S")
dat["setTime"]
dat$setTime <- time

##plot 3 
columnlines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(dat$setTime, dat$Sub_metering_1, type="l", col=columnlines[1], xlab="", ylab="Energy sub metering")
lines(dat$setTime, dat$Sub_metering_2, col=columnlines[2])
lines(dat$setTime, dat$Sub_metering_3, col=columnlines[3])
legend("topright", legend=labels, col=columnlines, lty="solid")
