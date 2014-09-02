png('plot4.png')

par(mfrow = c(2,2))

plot(as.POSIXlt(paste(hpc$Date,hpc$Time)),hpc$Global_active_power,type = 'l',xlab = '',
     ylab = 'Global Active Power')

plot(as.POSIXlt(paste(hpc$Date,hpc$Time)),hpc$Voltage,xlab = 'datetime',ylab = 'Voltage',type = 'l')

plot(as.POSIXlt(paste(hpc$Date,hpc$Time)),hpc$Sub_metering_1,type = 'l',xlab = '',
     ylab = 'Energy sub metering')
lines(as.POSIXlt(paste(hpc$Date,hpc$Time)),hpc$Sub_metering_2,col = 'red')
lines(as.POSIXlt(paste(hpc$Date,hpc$Time)),hpc$Sub_metering_3,col = 'blue')
legend('topright',legend = names(hpc)[7:9],col = c('black','red','blue'),lty = 1)

plot(as.POSIXlt(paste(hpc$Date,hpc$Time)),hpc$Global_reactive_power,xlab = 'datetime',
     ylab = 'Global_reactive_power',type = 'l')

dev.off()
