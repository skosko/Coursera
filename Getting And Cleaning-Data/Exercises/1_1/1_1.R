fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileUrl, destfile = "./Documents/Coursera/GettingAndCleaningData/1_1/data.csv", method = "curl")
dateDownloaded <- date()
data <- read.csv("./Documents/Coursera/GettingAndCleaningData/1_1/data.csv")
v <- data$VAL
v[!is.na(v) & v > 23]
print v
