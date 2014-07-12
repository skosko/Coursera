library(xlsx)
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(fileUrl, destfile = "./Documents/Coursera/GettingAndCleaningData/1_3/data.xlsx", method = "curl")
dateDownloaded <- date()
colIndex <- 7:15
rowIndex <- 18:23
dat <- read.xlsx("./Documents/Coursera/GettingAndCleaningData/1_3/data.xlsx",sheetIndex=1,colIndex=colIndex,rowIndex=rowIndex)
sum(dat$Zip*dat$Ext,na.rm=T)
