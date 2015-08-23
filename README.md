## Getting and Cleaning Data project

### Course Project requirements

1. You should create one R script called run_analysis.R that does the following:
 * Merges the training and the test sets to create one data set.
 * Extracts only the measurements on the mean and standard deviation for each measurement.
 * Uses descriptive activity names to name the activities in the data set
 * Appropriately labels the data set with descriptive activity names.
 * Create a second, independent tidy data set with the average of each variable for each activity and each subject.

2. Create a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md

3. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.


## Explanation

Since the project is relatively small, I have not used and custom functions

The run_analysis.R has proper comments of the following steps:

* Check if there is a "UCI HAR Dataset" present in the working directory, else download the data and unzip
* Install and load packages if not present
* Read Train Data
* Read Test Data
* Merge Data
* Name the data columns
* Bind all the data together
* Find and filter the needed data from the dataset
* Give the appropriate descriptive names to the columns of the data sets
* Create the second independent tidy set with the average of each variable for each activity and each subject
* Export the tidy data in a filename tidy_data.txt in the "UCI HAR Dataset" directory
