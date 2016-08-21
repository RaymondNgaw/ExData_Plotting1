# Read data, convert dates, fix for missing observations and subset for 2 days in February 2007
data <- read.table('~/project/household_power_consumption.txt', sep=';', header=T, 
                   colClasses = c('character', 'character', 'numeric',
                                  'numeric', 'numeric', 'numeric',
                                  'numeric', 'numeric', 'numeric'),
                   na.strings='?')
data$DateTime <- strptime(paste(data$Date, data$Time), 
                          "%d/%m/%Y %H:%M:%S")
data <- subset(data, 
               as.Date(DateTime) >= as.Date("2007-02-01") & 
                 as.Date(DateTime) <= as.Date("2007-02-02"))

# Open plot2.png
png("plot2.png", height=480, width=480)

# Create time series
plot(data$DateTime, 
     data$Global_active_power, 
     pch=NA, 
     xlab="", 
     ylab="Global Active Power (kilowatts)")
lines(data$DateTime, data$Global_active_power)

# Close PNG file
dev.off()