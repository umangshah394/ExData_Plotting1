
unzip("exdata_data_household_power_consumption.zip")
 data2 <- read.csv2("household_power_consumption.txt")
 View(data2)
 library(lubridate)
 data2$Date <- as.Date(data2$Date, format = "%d/%m/%Y")
 d1 <- as.Date("2007-02-01")
 d2 <- as.Date("2007-02-02")
 data3 <- subset(data2, Date == d1|Date == d2)
 data3$Global_active_power <- as.numeric(as.character(data3$Global_active_power))
 library(grDevices)
 library(graphics)
 hist(data3$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
 dev.copy(png, "Plot1.png")
 dev.off()
 png(filename = "Plot1.png", width = 480, height = 480, units = "px")
 
 