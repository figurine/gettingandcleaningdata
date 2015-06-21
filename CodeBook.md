Each row of the tidy data set is uniquely indexed by the combination of subject and activity.

UCI provided accelermoer and gyroscope measurements acquired by asking test subjects to perform common physical activity while wearing samsumg smart phones. The resulting variable features include raw and filtered accelerometer and gyroscope signals. These signals were decomposed and processed.

Out of 561 features provided by the Samsung dataset, the 79 features which represented mean or standard deviation estimates were selected for summation by averaging. Note that for the purposes of this submission, that includes mean frequency features. Angle calculations based on mean values, such as angle.tBodyAccJerkMean..gravityMean., were not included in the tidy data set.

All feature variables in the tidy data set have been summarized by averaging the mean and standard deviations vector from the existing UCI HAR feature Datasets. 

The Samsung Dataset was provided with an existing split between the training and test observations. These two datasets were recombined by concatenating the two sets of records together. The combination of training and test data sets contain a total of 10299 observations split over 30 test subjects and 6 named activities. Since each test subject executed each of the 6 activities, the resulting wide form tidy data set contains 180 records. Each feature in the tidy data set represent the average of roughly 60 observations from the test and training data sets. 

One of the main uses of the UCI data is to develop predictive models to categorize a subject's activity based on the accelerometer and gyroscopic reading. Without know how the merged data set will be used, wide form seemed to best preserve the notion that the combined averaged features are attributes attached to specific test subject performing specific activities. Further adjustment into a long tidy form were deemed unnessecary. (Note, Hadley Wickham's "Tidy Data" white paper supports justification for either form. http://vita.had.co.nz/papers/tidy-data.pdf)

Per the UCI HAR "ReadMe.txt" file: Subjects have been assigned numbers 1 through 30. Activity number have been replaced with the activity name tes to are represent the following 6 categories of outcomes: LAYING SITTING STANDING WALKING
 WALKING_DOWNSTAIRS WALKING_UPSTAIRS Each quantitative feature ("tBodyAcc.mean...X" thru "fBodyBodyGyroJerkMag.meanFreq..") is the average of serveral feature observations. These features were initially normalized and bounded within the range of [-1,1] by the UCI study.

Further details on each of the Features can be found in the UCI HAR Dataset: "features_info.txt"" file.

List of retained varaibles and features:

subject
 activity
 tBodyAcc.mean...X
 tBodyAcc.mean...Y
 tBodyAcc.mean...Z
 tBodyAcc.std...X
 tBodyAcc.std...Y
 tBodyAcc.std...Z
 tGravityAcc.mean...X
 tGravityAcc.mean...Y
 tGravityAcc.mean...Z
 tGravityAcc.std...X
 tGravityAcc.std...Y
 tGravityAcc.std...Z
 tBodyAccJerk.mean...X
 tBodyAccJerk.mean...Y
 tBodyAccJerk.mean...Z
 tBodyAccJerk.std...X
 tBodyAccJerk.std...Y
 tBodyAccJerk.std...Z
 tBodyGyro.mean...X
 tBodyGyro.mean...Y
 tBodyGyro.mean...Z
 tBodyGyro.std...X
 tBodyGyro.std...Y
 tBodyGyro.std...Z
 tBodyGyroJerk.mean...X
 tBodyGyroJerk.mean...Y
 tBodyGyroJerk.mean...Z
 tBodyGyroJerk.std...X
 tBodyGyroJerk.std...Y
 tBodyGyroJerk.std...Z
 tBodyAccMag.mean..
 tBodyAccMag.std..
 tGravityAccMag.mean..
 tGravityAccMag.std..
 tBodyAccJerkMag.mean..
 tBodyAccJerkMag.std..
 tBodyGyroMag.mean..
 tBodyGyroMag.std..
 tBodyGyroJerkMag.mean..
 tBodyGyroJerkMag.std..
 fBodyAcc.mean...X
 fBodyAcc.mean...Y
 fBodyAcc.mean...Z
 fBodyAcc.std...X
 fBodyAcc.std...Y
 fBodyAcc.std...Z
 fBodyAcc.meanFreq...X
 fBodyAcc.meanFreq...Y
 fBodyAcc.meanFreq...Z
 fBodyAccJerk.mean...X
 fBodyAccJerk.mean...Y
 fBodyAccJerk.mean...Z
 fBodyAccJerk.std...X
 fBodyAccJerk.std...Y
 fBodyAccJerk.std...Z
 fBodyAccJerk.meanFreq...X
 fBodyAccJerk.meanFreq...Y
 fBodyAccJerk.meanFreq...Z
 fBodyGyro.mean...X
 fBodyGyro.mean...Y
 fBodyGyro.mean...Z
 fBodyGyro.std...X
 fBodyGyro.std...Y
 fBodyGyro.std...Z
 fBodyGyro.meanFreq...X
 fBodyGyro.meanFreq...Y
 fBodyGyro.meanFreq...Z
 fBodyAccMag.mean..
 fBodyAccMag.std..
 fBodyAccMag.meanFreq..
 fBodyBodyAccJerkMag.mean..
 fBodyBodyAccJerkMag.std..
 fBodyBodyAccJerkMag.meanFreq..
 fBodyBodyGyroMag.mean..
 fBodyBodyGyroMag.std..
 fBodyBodyGyroMag.meanFreq..
 fBodyBodyGyroJerkMag.mean..
 fBodyBodyGyroJerkMag.std..
 fBodyBodyGyroJerkMag.meanFreq..
