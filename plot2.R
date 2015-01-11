datasource <- read.csv("household_power_consumption.txt", sep=";")
datasource$Date<-(as.Date(datasource$Date,format="%d/%m/%Y"))
datasource<- datasource[datasource$Date %in% as.Date(c('2007-02-01', '2007-02-02')),]
datasource$T2<-paste(datasource$Date,datasource$Time)
datasource$Global_active_power<-as.numeric(as.character(datasource$Global_active_power))
datasource$T2<-as.POSIXlt(datasource$T2)
png(file = "plot2.png", width=480, height=480)
plot(datasource$T2,datasource$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off() 
