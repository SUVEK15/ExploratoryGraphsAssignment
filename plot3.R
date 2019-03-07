  datafile<-"./household_power_consumption.txt"
  data<- read.table(datafile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
  subsetdata<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
  dateTime<-strptime(paste(subsetdata$Date,subsetdata$Time, sep = ""), "%d/%m/%Y %H:%M:%S")
  globalActivePower<-as.numeric(subsetdata$Global_active_power)
  submeter_1<-as.numeric(subsetdata$Sub_metering_1)
  submeter_2<-as.numeric(subsetdata$Sub_metering_2)
  submeter_3<-as.numeric(subsetdata$Sub_metering_3)
  png("plot3.png", width = 500, height = 500)
  plot(dateTime, submeter_1, type = "l", ylab = "Energy Submetering", xlab = "")
  lines(dateTime, submeter_2, type ="l",col ="red")
  lines(dateTime,submeter_3, type = "l", col = "blue")
  legend("topright",c("submeter_1","submeter_2","submeter_3"), lty = 1, lwd = 2.5, col = c("black","red","blue"))
  dev.off()
  
