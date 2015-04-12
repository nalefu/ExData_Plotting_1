df <- "./ExData_Plotting1/household_power_consumption.txt"
dat <- read.table(df, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subset <- dat[dat$Date %in% c("1/2/2007","2/2/2007") ,]
dt <- strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
glacpo <- as.numeric(subset$Global_active_power)
png("plot2.png", width=480, height=480)
plot(dt, glacpo, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()