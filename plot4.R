d <- read.csv('two_days.txt', header=FALSE, sep=';')
colnames(d) <- c('date', 'time', 'global_active_power', 'global_reactive_power',
                 'voltage', 'global_intensity', 'sub_metering_1', 'sub_metering_2', 'sub_metering_3')

day_breaks <- c(1, 1441, 2880)
gap <- d$global_active_power

# Plot 4
png('plot4.png')
par(mfcol=c(2,2))

plot(1:length(gap), gap, xlab='', type='l', xaxt='n',
     ylab='Global Active Power (kilowatts)')
axis(1, at=day_breaks, labels=c('Thu', 'Fri', 'Sat'))

plot(d$sub_metering_1, type='l', col='black', xlab='', ylab='Energy sub metering', xaxt='n')
lines(d$sub_metering_2, col='red')
lines(d$sub_metering_3, col='blue')
axis(1, at=day_breaks, labels=c('Thu', 'Fri', 'Sat'))
legend("topright", lwd=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(d$voltage, type='l', ylab='Voltage', xlab='datetime', xaxt='n')
axis(1, at=day_breaks, labels=c('Thu', 'Fri', 'Sat'))

plot(d$global_reactive_power, type='l', ylab='Global_reactive_power', xlab='datetime', xaxt='n')
axis(1, at=day_breaks, labels=c('Thu', 'Fri', 'Sat'))
dev.off()