d <- read.csv('two_days.txt', header=FALSE, sep=';')
colnames(d) <- c('date', 'time', 'global_active_power', 'global_reactive_power',
                 'voltage', 'global_intensity', 'sub_metering_1', 'sub_metering_2', 'sub_metering_3')

# Plot 1
png('plot1.png')
gap <- d$global_active_power
hist(gap, xlab='Global Active Power (kilowatts)',
     main = 'Global Active Power', col='red')
dev.off()