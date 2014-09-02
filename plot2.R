png('plot2.png')
plot(as.POSIXlt(paste(hpc$Date,hpc$Time)),hpc$Global_active_power,type = 'l',xlab = '',
     ylab = 'Global Active Power (kilowatts)')
dev.off()

