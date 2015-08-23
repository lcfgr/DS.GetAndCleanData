# CodeBook for the cleaning and variables of the tidy dataset


The following steps where performed to provide the tidy dataset

* Read the appropriate data
* Filter and keep only the data that are  mean and standard deviation measurements.
* Classify the products by the Activity Type and Subject Number
* Calculate the mean value of all the mean and standard deviation measurements.
* Export the data in the filename tidy_data.txt, in the "UCI HAR Dataset" directory

The final file contains a dataframe of 88 variables:

|Variables                                          |
|:--------------------------------------------------|
|Activity                                           |
|Subject                                            |
|TimeBodyAccelerometer-mean()-X                     |
|TimeBodyAccelerometer-mean()-Y                     |
|TimeBodyAccelerometer-mean()-Z                     |
|TimeBodyAccelerometer-std()-X                      |
|TimeBodyAccelerometer-std()-Y                      |
|TimeBodyAccelerometer-std()-Z                      |
|TimeGravityAccelerometer-mean()-X                  |
|TimeGravityAccelerometer-mean()-Y                  |
|TimeGravityAccelerometer-mean()-Z                  |
|TimeGravityAccelerometer-std()-X                   |
|TimeGravityAccelerometer-std()-Y                   |
|TimeGravityAccelerometer-std()-Z                   |
|TimeBodyAccelerometerJerk-mean()-X                 |
|TimeBodyAccelerometerJerk-mean()-Y                 |
|TimeBodyAccelerometerJerk-mean()-Z                 |
|TimeBodyAccelerometerJerk-std()-X                  |
|TimeBodyAccelerometerJerk-std()-Y                  |
|TimeBodyAccelerometerJerk-std()-Z                  |
|TimeBodyGyroscope-mean()-X                         |
|TimeBodyGyroscope-mean()-Y                         |
|TimeBodyGyroscope-mean()-Z                         |
|TimeBodyGyroscope-std()-X                          |
|TimeBodyGyroscope-std()-Y                          |
|TimeBodyGyroscope-std()-Z                          |
|TimeBodyGyroscopeJerk-mean()-X                     |
|TimeBodyGyroscopeJerk-mean()-Y                     |
|TimeBodyGyroscopeJerk-mean()-Z                     |
|TimeBodyGyroscopeJerk-std()-X                      |
|TimeBodyGyroscopeJerk-std()-Y                      |
|TimeBodyGyroscopeJerk-std()-Z                      |
|TimeBodyAccelerometerMagnitude-mean()              |
|TimeBodyAccelerometerMagnitude-std()               |
|TimeGravityAccelerometerMagnitude-mean()           |
|TimeGravityAccelerometerMagnitude-std()            |
|TimeBodyAccelerometerJerkMagnitude-mean()          |
|TimeBodyAccelerometerJerkMagnitude-std()           |
|TimeBodyGyroscopeMagnitude-mean()                  |
|TimeBodyGyroscopeMagnitude-std()                   |
|TimeBodyGyroscopeJerkMagnitude-mean()              |
|TimeBodyGyroscopeJerkMagnitude-std()               |
|FrequencyBodyAccelerometer-mean()-X                |
|FrequencyBodyAccelerometer-mean()-Y                |
|FrequencyBodyAccelerometer-mean()-Z                |
|FrequencyBodyAccelerometer-std()-X                 |
|FrequencyBodyAccelerometer-std()-Y                 |
|FrequencyBodyAccelerometer-std()-Z                 |
|FrequencyBodyAccelerometer-meanFreq()-X            |
|FrequencyBodyAccelerometer-meanFreq()-Y            |
|FrequencyBodyAccelerometer-meanFreq()-Z            |
|FrequencyBodyAccelerometerJerk-mean()-X            |
|FrequencyBodyAccelerometerJerk-mean()-Y            |
|FrequencyBodyAccelerometerJerk-mean()-Z            |
|FrequencyBodyAccelerometerJerk-std()-X             |
|FrequencyBodyAccelerometerJerk-std()-Y             |
|FrequencyBodyAccelerometerJerk-std()-Z             |
|FrequencyBodyAccelerometerJerk-meanFreq()-X        |
|FrequencyBodyAccelerometerJerk-meanFreq()-Y        |
|FrequencyBodyAccelerometerJerk-meanFreq()-Z        |
|FrequencyBodyGyroscope-mean()-X                    |
|FrequencyBodyGyroscope-mean()-Y                    |
|FrequencyBodyGyroscope-mean()-Z                    |
|FrequencyBodyGyroscope-std()-X                     |
|FrequencyBodyGyroscope-std()-Y                     |
|FrequencyBodyGyroscope-std()-Z                     |
|FrequencyBodyGyroscope-meanFreq()-X                |
|FrequencyBodyGyroscope-meanFreq()-Y                |
|FrequencyBodyGyroscope-meanFreq()-Z                |
|FrequencyBodyAccelerometerMagnitude-mean()         |
|FrequencyBodyAccelerometerMagnitude-std()          |
|FrequencyBodyAccelerometerMagnitude-meanFreq()     |
|FrequencyBodyAccelerometerJerkMagnitude-mean()     |
|FrequencyBodyAccelerometerJerkMagnitude-std()      |
|FrequencyBodyAccelerometerJerkMagnitude-meanFreq() |
|FrequencyBodyGyroscopeMagnitude-mean()             |
|FrequencyBodyGyroscopeMagnitude-std()              |
|FrequencyBodyGyroscopeMagnitude-meanFreq()         |
|FrequencyBodyGyroscopeJerkMagnitude-mean()         |
|FrequencyBodyGyroscopeJerkMagnitude-std()          |
|FrequencyBodyGyroscopeJerkMagnitude-meanFreq()     |
|angle(tBodyAccelerometerMean,gravity)              |
|angle(tBodyAccelerometerJerkMean),gravityMean)     |
|angle(tBodyGyroscopeMean,gravityMean)              |
|angle(tBodyGyroscopeJerkMean,gravityMean)          |
|angle(X,gravityMean)                               |
|angle(Y,gravityMean)                               |
|angle(Z,gravityMean)                               |

## Units

The variable **Activity** is of factor type, representing the activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)  

The variable **Subject** is dimensionless number, representing the subject that performed the activity  

The rest variables are the **mean** values of all the measurements and are named accordingly and their units are correspondingly. They are normalized between [-1,1].  
Accelerometer : **g**  
Angular Velocity : **radians/second**  
