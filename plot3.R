png('plot3.png')

plot(as.POSIXlt(paste(hpc$Date,hpc$Time)),hpc$Sub_metering_1,type = 'l',xlab = '',
     ylab = 'Energy sub metering')
lines(as.POSIXlt(paste(hpc$Date,hpc$Time)),hpc$Sub_metering_2,col = 'red')
lines(as.POSIXlt(paste(hpc$Date,hpc$Time)),hpc$Sub_metering_3,col = 'blue')
legend('topright',legend = names(hpc)[7:9],col = c('black','red','blue'),lty = 1)

dev.off()

