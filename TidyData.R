TidyData <- function() {
  
    if (!file.exists("./household_power_consumption.txt")) {
    
     # download the data from source
      FileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
      SaveLocalFile <- "exdata_data_household_power_consumption.zip"
     download.file(FileURL, destfile = SaveLocalFile, method = "libcurl")
    
      # Extract the file to local folder(current environment)
      unzip(SaveLocalFile)
  }
  
  # read the data; account for headers, separators, missing values.
  data <- read.table("./household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
  
  # convert the Date and Time variables to Date/Time classes
  data$Date <- as.Date(data$Date, "%d/%m/%Y")
  
  # subset the data to use :data only from the dates 2007-02-01 and 2007-02-02
  data[data$Date == "2007/02/01" | data$Date == "2007/02/02", ]
  
  
  
}