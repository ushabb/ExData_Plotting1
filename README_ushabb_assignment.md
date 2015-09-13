## Introduction

Following are details for this submission of the Plotting Assignment 1 for Exploratory Data Analysis

## Files
* <b>.R Files</b>: 
<ol>
<li><b>TidyData.R</b>: A function called to load the original data from source 
and extract contents locally for the first time. Subsequently for every plot'n'.R code file called, this function is
used to subset the data from the original data (enabling the use of data that 
falls within the date criteria of 2007-02-01 and 2007-02-02) as well as to 
tidy up the data (explicitly recognizing separators and missing values)</li>
<li><b>plot1.R</b>: Plots a histogram of Global_active_power column </li>
<li><b>plot2.R</b>: Plots a line plot of Global_active_power(y-axis) vs week days(x-axis) </li>
<li><b>plot3.R</b>: Plots a multivariate line plot of Sub_metering_"n" columns(y-axis) vs week days(x-axis) (in kilowatt) </li>
<li><b>plot4.R</b>: Plots Multiple Base Plots (in volt) </li>
</ol>

* <b>.png Files</b>: Measurements of electric power consumption in
<ol>
<li><b>plot1.png</b>: A histogram of Global_active_power column - As a result of plot1.R </li>
<li><b>plot2.png</b>: Plots a line plot of Global_active_power(y-axis) vs week days(x-axis) As a result of plot2.R </li>
<li><b>plot3.png</b>: A multivariate line plot of Sub_metering_"n" columns(y-axis) vs week days(x-axis) - As a result of plot3.R </li>
<li><b>plot4.png</b>: Multiple Base Plots - As a result of plot4.R  </li>
</ol>


## Usage
* <b>source("plot1.R")</b>: will create the plot1.png file 
* <b>source("plot2.R")</b>: will create the plot2.png file 
* <b>source("plot3.R")</b>: will create the plot3.png file 
* <b>source("plot4.R")</b>: will create the plot4.png file 