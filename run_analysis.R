

## Download and unzip file
if (!dir.exists("UCI HAR Dataset")) {
download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip','UCI_HAR_data.zip')
unzip('UCI_HAR_data.zip')
}


## Install and load packages if not present
if (!require("data.table")) install.packages("data.table")
if (!require("reshape2")) install.packages("reshape2")

setwd('UCI HAR Dataset/')

#Read Train Data
train_subjects <- read.table("./train/subject_train.txt")
train_activities <- read.table("./train/y_train.txt")
train_features <- read.table("./train/X_train.txt")

# Read Test Data
test_subjects <- read.table("./test/subject_test.txt")
test_activities <- read.table("./test/y_test.txt")
test_features <- read.table("./test/X_test.txt")

#Merge
subjects <- rbind(train_subjects,test_subjects)
activities <- rbind (train_activities,test_activities)
features <- rbind(train_features,test_features)


# Name the data columns
colnames(subjects) <- "Subject"
colnames(activities) <- "ActivityID"

features_list <- read.table("./features.txt")
colnames(features) <- t(features_list[2])

#Bind all the data together
full_dataset <- cbind(subjects,activities, features)

# Search for words "mean" or "std" in the names of the features table
needed_columns <- grep("mean|std", names(full_dataset),ignore.case = TRUE)

# Create the needed dataset, without omitting the subjects and activities columns
needed_dataset <- full_dataset[,c(1,2,needed_columns)]

# Create a column with the names of activities
activity_labels <- read.table("./activity_labels.txt")
colnames(activity_labels) <- c('id','Activity')
needed_dataset<-merge(needed_dataset,activity_labels,by.x = "ActivityID", by.y ="id")

# Give proper names to the rest of the columns
names(needed_dataset)<-gsub("^t", "Time", names(needed_dataset))
names(needed_dataset)<-gsub("^f", "Frequency", names(needed_dataset))
names(needed_dataset)<-gsub("Acc", "Accelerometer", names(needed_dataset))
names(needed_dataset)<-gsub("Gyro", "Gyroscope", names(needed_dataset))
names(needed_dataset)<-gsub("Mag", "Magnitude", names(needed_dataset))
names(needed_dataset)<-gsub("BodyBody", "Body", names(needed_dataset))


## Create the second independent tidy set  with the average of each variable for each activity and each subject
## Will use Subjects and Activities as key variables for the tidy set

needed_dataset$Subject <- as.factor(needed_dataset$Subject)
needed_dataset <- needed_dataset[,-1]

# Use melt with auto settings, the factor variables will be used as id variables
melted_dataset <- melt(needed_dataset)

#recast
tidy_dataset <- dcast(melted_dataset, Activity + Subject ~ variable, mean)

# Export tidy dataset
setwd('..')
write.csv(tidy_dataset, file = "./tidy_data.txt",row.names = FALSE)

