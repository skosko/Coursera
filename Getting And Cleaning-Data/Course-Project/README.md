Getting and Cleaning Data
=========================

Task
-------

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


Steps to Solve the Project
-------

1. Download the source data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
2. Extract the source to your working directory. You'll have a folder called `UCI HAR Dataset`.
3. Make sure that the following R packages are installed: `plyr`, `reshape`
4. Run `run_analysis.R`

Result
-------
The data sets `tidy_data_set.txt` and `tidy_data_set_means.txt` will be created in the working directory.

Constructed using
-------
    platform       x86_64-apple-darwin10.8.0   
    arch           x86_64                      
    os             darwin10.8.0                
    system         x86_64, darwin10.8.0        
    status                                     
    major          3                           
    minor          0.3                         
    year           2014                        
    month          03                          
    day            06                          
    svn rev        65126                       
    language       R                           
    version.string R version 3.0.3 (2014-03-06)
    nickname       Warm Puppy 
