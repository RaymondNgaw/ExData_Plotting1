png("plot1.png", height=480, width=480)

hist(data$Global_active_power, col='red', 
     xlab = 'Global Active Power (kilowatts)',
     main = 'Global Active Power')

dev.off()

