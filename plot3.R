df <- "./ExData_Plotting1/household_power_consumption.txt"
dat <- read.table(df, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subset <- dat[dat$Date %in% c("1/2/2007","2/2/2007") ,]
dt <- strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
glacpo <- as.numeric(subset$Global_active_power)
meter1 <- as.numeric(subset$Sub_metering_1)
meter2 <- as.numeric(subset$Sub_metering_2)
meter3 <- as.numeric(subset$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(dt, meter1, type="l", ylab="Energy Submetering", xlab="")
lines(dt, meter2, type="l", col="red")
lines(dt, meter3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
