# source the R program that tidies up the data
    source("./TidyData.R")

# Subset the data using the TidyData Function
    data <- TidyData()

# plot2 : A line plot of Global_active_power(y-axis) vs week days(x-axis) using the strptime function
    with(data, {
      png(filename = "plot2.png", width = 480, height = 480)
      xaxis <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
      yaxis <- data$Global_active_power
      plot(xaxis, yaxis, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
      dev.off()
    })