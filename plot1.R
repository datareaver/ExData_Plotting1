hpc <- read.table('household_power_consumption.txt',header = T, sep = ';',na.strings = c('?'))
hpc$Date <- as.Date(hpc$Date,format = "%d/%m/%Y")
hpc <- hpc[hpc$Date == as.Date('2007-02-01') | hpc$Date == as.Date('2007-02-02'),]

png('plot1.png')
hist(hpc$Global_active_power, freq = T,col = 'red',xlab = 'Global Active Power (kilowatts)',
     main = 'Global Active Power')
dev.off()
