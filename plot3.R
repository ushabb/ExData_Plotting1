# source the R program that tidies up the data
    source("./TidyData.R")

# Subset the data using the TidyData Function
    data <- TidyData()

# plot2 : A multivariate line plot of Sub_metering_"n" columns(y-axis) vs week days(x-axis) using the strptime function
    with(data, {
      png(filename = "plot3.png", width = 480, height = 480)
      xaxis <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
      plot(xaxis, data$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")
      lines(xaxis, data$Sub_metering_1, col = "black")
      lines(xaxis, data$Sub_metering_2, col = "red")
      lines(xaxis, data$Sub_metering_3, col = "blue")
      legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
      dev.off()
    })