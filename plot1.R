## READING THE DATA AND SUBSETTING IT

 big <- read.table("elec.txt", header = TRUE, stringsAsFactors = FALSE, sep = ";", na.strings = "?")

 small<-subset(big, big$Date == "1/2/2007" | big$Date == "2/2/2007")



## PLOT 1

 png(filename = "plot1.png", width = 480, height = 480)

 hist(small$Global_active_power, xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red", main = "Global Active Power")

 dev.off()