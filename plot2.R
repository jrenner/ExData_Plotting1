d <- read.csv('two_days.txt', header=FALSE, sep=';')
colnames(d) <- c('date', 'time', 'global_active_power', 'global_reactive_power',
                 'voltage', 'global_intensity', 'sub_metering_1', 'sub_metering_2', 'sub_metering_3')

day_breaks <- c(1, 1441, 2880)

# Plot 2
png('plot2.png')
plot(1:length(gap), gap, xlab='', type='l', xaxt='n',
     ylab='Global Active Power (kilowatts)')
axis(1, at=day_breaks, labels=c('Thu', 'Fri', 'Sat'))
dev.off()