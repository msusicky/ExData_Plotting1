datasource <- read.csv("household_power_consumption.txt", sep=";")
datasource$Date<-(as.Date(datasource$Date,format="%d/%m/%Y"))
datasource<- datasource[datasource$Date %in% as.Date(c('2007-02-01', '2007-02-02')),]
datasource$Global_active_power<-as.numeric(as.character(datasource$Global_active_power))
png('plot1.png', width=480, height=480)
hist(datasource$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()
