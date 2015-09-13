# source the R program that tidies up the data
    source("./TidyData.R")

# Subset the data using the TidyData Function
    data <- TidyData()

# plot2 : A multivariate line plot of Sub_metering_"n" columns(y-axis) vs week days(x-axis) using the strptime function
    
    with(data, {
      png(filename = "plot4.png", width = 480, height = 480) 
      par(mfrow = c(2, 2))
      
    #Common xaxis for all four subplots : using the strptime function
      xaxis <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
      
      # Subplot 1 : line plot of Global_active_power(y-axis) vs week days(x-axis)
        yaxis_1 <- data$Global_active_power
        plot(xaxis, yaxis_1, type = "l", ylab = "Global Active Power", xlab = "")
      
      #Subplot 2 : line plot of Voltage(y-axis) vs week days(x-axis)
        yaxis_2 <- data$Voltage
        plot(xaxis, yaxis_2, type = "l", ylab = "Voltage", xlab = "datetime")
        
      #Subplot 3 : A multivariate line plot of Sub_metering_"n" columns(y-axis) vs week days(x-axis)
        plot(xaxis, data$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")
        lines(xaxis, data$Sub_metering_1, col = "black")
        lines(xaxis, data$Sub_metering_2, col = "red")
        lines(xaxis, data$Sub_metering_3, col = "blue")
        legend("topright",lty =1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")
        
      # Subplot 4 : line plot of Global_reactive_power(y-axis) vs week days(x-axis)
        yaxis_1 <- data$Global_reactive_power
        plot(xaxis, yaxis_1, type = "l", ylab = "Global_reactive_power", xlab = "datetime")
        
        dev.off()
   })
    