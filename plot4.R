
## READING THE DATA AND SUBSETTING IT

 big <- read.table("elec.txt", header = TRUE, stringsAsFactors = FALSE, sep = ";", na.strings = "?")

 small<-subset(big, big$Date == "1/2/2007" | big$Date == "2/2/2007")




## PLOT 4


 png(filename = "plot4.png", width = 480, height = 480)
 par(mfrow = c(2,2))


 plot(small$new, small$Global_active_power , type = "l", ylab = "Global Active Power", xlab = "")

 plot(small$new, small$Voltage, type = "l", xlab = "datetime", ylab = "Voltage" )

 plot(small$new, small$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering" )
 lines(small$new, small$Sub_metering_2, type = "l", col = "red")
 lines(small$new, small$Sub_metering_3, type = "l", col = "blue")
 legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c("black", "red", "blue"), bty = "n")

 plot(small$new, small$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")


 dev.off()