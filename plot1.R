
datafile<-"household_power_consumption.txt"
data<- read.table(datafile, header = TRUE, sep = ",", stringsAsFactors = FALSE, dec = ".")
subsetdata<- data[data$Date %in% c("1/2/2007","2/2/2007"),]
globalactivepower<-as.numeric(subsetdata$Global_active_power)
png("plot1.png", width = 500, height = 500)
hist(globalactivepower, col = "red", main = "Global Active Power", xlab = "Global Active Power")
dev.off()

