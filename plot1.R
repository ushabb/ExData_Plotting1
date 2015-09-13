# source the R program that tidies up the data
    source("./TidyData.R")

# Subset the data using the TidyData Function
    data <- TidyData()

# plot1 : A histogram of Global_active_power column
    with(data, {
      png(filename = "plot1.png", width = 480, height = 480)
      hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab ="Frequency")
      dev.off()
    })