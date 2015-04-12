df <- "./ExData_Plotting1/household_power_consumption.txt"
dat <- read.table(df, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subset <- dat[dat$Date %in% c("1/2/2007","2/2/2007") ,]
#str(subSetData)
glacpo <- as.numeric(subset$Global_active_power)
png("plot1.png", width=480, height=480)
hist(glacpo, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()