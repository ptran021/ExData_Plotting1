setwd("C:/Users/patri/Desktop/project1")
dat <- read.table("Household_power_consumption.txt",sep = ";",header = T,na.strings = "")


##subset data
dat <- dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
time <- strptime((paste(dat$Date,dat$Time, sep = " ")),"%d/%m/%Y %H:%M:%S")
dat["setTime"]
dat$setTime <- time

## plot 1
hist(as.numeric(dat$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
