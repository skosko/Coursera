fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(fileUrl, destfile = "./Documents/Coursera/GettingAndCleaningData/1_5/data.csv", method = "curl")
DT <- fread(input = "./Documents/Coursera/GettingAndCleaningData/1_5/data.csv")
system.time(mean(DT[DT$SEX==1,]$pwgtp15); mean(DT[DT$SEX==2,]$pwgtp15))