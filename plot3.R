## READING THE DATA AND SUBSETTING IT

 big <- read.table("elec.txt", header = TRUE, stringsAsFactors = FALSE, sep = ";", na.strings = "?")

 small<-subset(big, big$Date == "1/2/2007" | big$Date == "2/2/2007")



## PLOT 3

 png(filename = "plot3.png", width = 480, height = 480)

 plot(small$new, small$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering" )
 lines(small$new, small$Sub_metering_2, type = "l", col = "red")
 lines(small$new, small$Sub_metering_3, type = "l", col = "blue")

 legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c("black", "red", "blue"))

 dev.off()