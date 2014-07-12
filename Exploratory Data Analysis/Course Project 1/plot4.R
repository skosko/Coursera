#Load Data 
data <- read.table("household_power_consumption.txt", 
                   header = TRUE, 
                   sep = ";", 
                   colClasses = c("character", "character","numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"),
                   na = "?")

#Convert the Date and Time variable to Date/Time classes
data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, "%d/%m/%Y")  

#Only use data from the dates 2007-02-01 and 2007-02-02
dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
data <- subset(data, Date %in% dates)

#Opening Graphics Device
png("plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))

#Plotting & Annotating #1
plot(data$Time, data$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

#Plotting & Annotating #2
plot(data$Time, data$Voltage,
     type = "l",
     xlab = "datetime",
     ylab = "Voltage")

#Plotting & Annotating #3
plot(data$Time, data$Sub_metering_1,
     type = "l",
     xlab = "",
     ylab = "Energy sub metering",
     col = "black")
lines(data$Time, data$Sub_metering_2,
      col = "red")
lines(data$Time, data$Sub_metering_3,
      col = "blue")
legend("topright",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       box.lwd = 0,
       lty = 1)

#Plotting & Annotating #4
plot(data$Time, data$Global_reactive_power,
     type = "n",
     xlab = "datetime")
lines(data$Time, data$Global_reactive_power)

dev.off()