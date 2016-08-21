if (!file.exists('plots')) {
  dir.create('plots')
}

source('~/GitHub/ExData_Plotting1/ExData_Plotting1/Cleaned.R')

png(filename='plots/plot1.png',width=480,height=480,units='px')

hist(power.consumption$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

x <- dev.off()