Code Book
=========================

This code book describes the data and any transformations or work that was performed to clean up the data


Original Data Set
-----------

Original data source: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Original description of the data: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Quote:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

Transformations
---------
The analysis script `run_analysis.R`
* Merges the test and training data sets into one data set
* Extracts only the measurements on the mean and standard deviation for each measurement
* Sets descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names
* Writes the result into the table `tidy_data_set.txt`
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject
* Writes the second data set into the table `tidy_data_set_means.txt`

Result Data Set
-----------

The table `tidy_data_set_means.txt` contains the following fields

| Column | Description |
|--------|-------------|
| subject | ID of the participant in the study |
| activity  | Label of the activity |
| mean | Average per activity and subject |

Field of the table `tidy_data_set.txt`

| Column | Original value |
|--------|-------------|
| subject |  |
| activity_id  | |
| activity |  |
| time.BodyAcceleration-mean-X | tBodyAcc-mean()-X |
| time.BodyAcceleration-mean-Y | tBodyAcc-mean()-Y |
| time.BodyAcceleration-mean-Z | tBodyAcc-mean()-Z |
| time.BodyAcceleration-std-X | tBodyAcc-std()-X |
| time.BodyAcceleration-std-Y | tBodyAcc-std()-Y |
| time.BodyAcceleration-std-Z | tBodyAcc-std()-Z |
| time.GravityAcceleration-mean-X | tGravityAcc-mean()-X |
| time.GravityAcceleration-mean-Y | tGravityAcc-mean()-Y |
| time.GravityAcceleration-mean-Z | tGravityAcc-mean()-Z |
| time.GravityAcceleration-std-X | tGravityAcc-std()-X |
| time.GravityAcceleration-std-Y | tGravityAcc-std()-Y |
| time.GravityAcceleration-std-Z | tGravityAcc-std()-Z |
| time.BodyAccelerationJerk-mean-X | tBodyAccJerk-mean()-X |
| time.BodyAccelerationJerk-mean-Y | tBodyAccJerk-mean()-Y |
| time.BodyAccelerationJerk-mean-Z | tBodyAccJerk-mean()-Z |
| time.BodyAccelerationJerk-std-X | tBodyAccJerk-std()-X |
| time.BodyAccelerationJerk-std-Y | tBodyAccJerk-std()-Y |
| time.BodyAccelerationJerk-std-Z | tBodyAccJerk-std()-Z |
| time.BodyGyro-mean-X | tBodyGyro-mean()-X |
| time.BodyGyro-mean-Y | tBodyGyro-mean()-Y |
| time.BodyGyro-mean-Z | tBodyGyro-mean()-Z |
| time.BodyGyro-std-X | tBodyGyro-std()-X |
| time.BodyGyro-std-Y | tBodyGyro-std()-Y |
| time.BodyGyro-std-Z | tBodyGyro-std()-Z |
| time.BodyGyroJerk-mean-X | tBodyGyroJerk-mean()-X |
| time.BodyGyroJerk-mean-Y | tBodyGyroJerk-mean()-Y |
| time.BodyGyroJerk-mean-Z | tBodyGyroJerk-mean()-Z |
| time.BodyGyroJerk-std-X | tBodyGyroJerk-std()-X |
| time.BodyGyroJerk-std-Y | tBodyGyroJerk-std()-Y |
| time.BodyGyroJerk-std-Z | tBodyGyroJerk-std()-Z |
| time.BodyAccelerationMagnitude-mean | tBodyAccMag-mean() |
| time.BodyAccelerationMagnitude-std | tBodyAccMag-std() |
| time.GravityAccelerationMagnitude-mean | tGravityAccMag-mean() |
| time.GravityAccelerationMagnitude-std | tGravityAccMag-std() |
| time.BodyAccelerationJerkMagnitude-mean | tBodyAccJerkMag-mean() |
| time.BodyAccelerationJerkMagnitude-std | tBodyAccJerkMag-std() |
| time.BodyGyroMagnitude-mean | tBodyGyroMag-mean() |
| time.BodyGyroMagnitude-std | tBodyGyroMag-std() |
| time.BodyGyroJerkMagnitude-mean | tBodyGyroJerkMag-mean() |
| time.BodyGyroJerkMagnitude-std | tBodyGyroJerkMag-std() |
| freq.BodyAcceleration-mean-X | fBodyAcc-mean()-X |
| freq.BodyAcceleration-mean-Y | fBodyAcc-mean()-Y |
| freq.BodyAcceleration-mean-Z | fBodyAcc-mean()-Z |
| freq.BodyAcceleration-std-X | fBodyAcc-std()-X |
| freq.BodyAcceleration-std-Y | fBodyAcc-std()-Y |
| freq.BodyAcceleration-std-Z | fBodyAcc-std()-Z |
| freq.BodyAcceleration-meanFreq-X | fBodyAcc-mean()-X |
| freq.BodyAcceleration-meanFreq-Y | fBodyAcc-mean()-Y |
| freq.BodyAcceleration-meanFreq-Z | fBodyAcc-mean()-Z |
| freq.BodyAccelerationJerk-mean-X | fBodyAccJerk-mean()-X |
| freq.BodyAccelerationJerk-mean-Y | fBodyAccJerk-mean()-Y |
| freq.BodyAccelerationJerk-mean-Z | fBodyAccJerk-mean()-Z |
| freq.BodyAccelerationJerk-std-X | fBodyAccJerk-std()-X |
| freq.BodyAccelerationJerk-std-Y | fBodyAccJerk-std()-Y |
| freq.BodyAccelerationJerk-std-Z | fBodyAccJerk-std()-Z |
| freq.BodyAccelerationJerk-meanFreq-X | fBodyAccJerk-meanFreq()-X |
| freq.BodyAccelerationJerk-meanFreq-Y | fBodyAccJerk-meanFreq()-Y |
| freq.BodyAccelerationJerk-meanFreq-Z | fBodyAccJerk-meanFreq()-Z |
| freq.BodyGyro-mean-X | fBodyGyro-mean()-X |
| freq.BodyGyro-mean-Y | fBodyGyro-mean()-Y |
| freq.BodyGyro-mean-Z | fBodyGyro-mean()-Z |
| freq.BodyGyro-std-X | fBodyGyro-std()-X |
| freq.BodyGyro-std-Y | fBodyGyro-std()-Y |
| freq.BodyGyro-std-Z | fBodyGyro-std()-Z |
| freq.BodyGyro-meanFreq-X | fBodyGyro-meanFreq()-X |
| freq.BodyGyro-meanFreq-Y | fBodyGyro-meanFreq()-Y |
| freq.BodyGyro-meanFreq-Z | fBodyGyro-meanFreq()-Z |
| freq.BodyAccelerationMagnitude-mean | fBodyAccMag-mean() |
| freq.BodyAccelerationMagnitude-std | fBodyAccMag-std()|
| freq.BodyAccelerationMagnitude-meanFreq | fBodyAccMag-meanFreq() |
| freq.BodyAccelerationJerkMagnitude-mean | fBodyBodyAccJerkMag-mean() |
| freq.BodyAccelerationJerkMagnitude-std | fBodyBodyAccJerkMag-std() |
| freq.BodyAccelerationJerkMagnitude-meanFreq | fBodyBodyAccJerkMag-meanFreq() |
| freq.BodyGyroMagnitude-mean | fBodyBodyGyroMag-mean() |
| freq.BodyGyroMagnitude-std | fBodyBodyGyroMag-std() |
| freq.BodyGyroMagnitude-meanFreq | fBodyBodyGyroMag-meanFreq()     |
| freq.BodyGyroJerkMagnitude-mean | fBodyBodyGyroJerkMag-mean() |
| freq.BodyGyroJerkMagnitude-std | fBodyBodyGyroJerkMag-std() |
| freq.BodyGyroJerkMagnitude-meanFreq | fBodyBodyGyroJerkMag-meanFreq() |
