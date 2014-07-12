library(plyr)
library(reshape)

# 1. Download the data from this url
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# 2. Extract it to your working directory

# Merges the training and the test sets to create one data set
train_subject = read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
test_subject = read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
subject = rbind(train_subject, test_subject) 

train_y = read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
test_y = read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
y = rbind(train_y, test_y)

train_x = read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
test_x = read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
x = rbind(train_x, test_x)

data_set = list(subject, y, x)


# Extracts only the measurements on the mean and standard deviation for each measurement
features = read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)[,2]
wanted_features = grepl("mean|std", features)
x = x[,wanted_features]

# Uses descriptive activity names to name the activities in the data set
activity_labels = read.table("UCI HAR Dataset/activity_labels.txt")[,2]
y[,2] = activity_labels[y[,1]]

# Appropriately labels the data set with descriptive variable names
names(subject) = "subject"
names(y) = c("activity_id", "activity") 
features = gsub("*[()]", "", features)
features = gsub("^t", "time.", features)
features = gsub("^f", "freq.", features)
features = gsub("Acc", "Acceleration", features)
features = gsub("Mag", "Magnitude", features)
features = gsub("BodyBody", "Body", features)
names(x) = features[wanted_features]

# Bind data together to first tidy data set
tidy = cbind(subject, y, x)
write.table(tidy,"tidy_data_set.txt")

# Creates a second, independent tidy data set with the average of each variable for each activity and each subject 
tidy_mean <- ddply(melt(tidy, id.vars=c("subject", "activity")), .(subject, activity), summarise, mean=mean(value))
write.table(tidy_mean, "tidy_data_set_means.txt")