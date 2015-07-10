## READING THE DATA AND SUBSETTING IT

 big <- read.table("elec.txt", header = TRUE, stringsAsFactors = FALSE, sep = ";", na.strings = "?")

 small<-subset(big, big$Date == "1/2/2007" | big$Date == "2/2/2007")



 ## PLOT 2

 small <- mutate(small, new = strptime(paste(small$Date, small$Time, sep = " "),"%d/%m/%Y %H:%M:%S"))

 png(filename = "plot2.png", width = 480, height = 480)

 plot(small$new, small$Global_active_power , type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

 dev.off()