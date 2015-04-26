# GettingCleaningProject
The Course Project for Getting and Cleaning Data

Hello, Grader!

This readme.txt serves as a guide to what I did, and the codebook.

For a detailed, step-by-step explanation of what I did, please see the copious commentary in the R script.

The tidy data set (tidydata.txt) that I have generated contains 1 record for each combination of Subject and Activity, 
followed by the means of all of the applicable data that was originally provided.

For more detail about data that was originally provided, the corresponding explainer files have also been left for you.


CODEBOOK:

The tidy data set (tidydata.txt) consists of the following columns:

Subject: An integer number from 1 through 30, identifying the person being measured
Activity: One of a predefined list of six activities performed by the person being tested

...and, where all units are preserved from the originally provided variables:

tBodyAcc-mean()-X: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyAcc-mean()-Y: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyAcc-mean()-Z: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyAcc-std()-X: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyAcc-std()-Z: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tGravityAcc-mean()-X: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tGravityAcc-mean()-Y: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tGravityAcc-mean()-Z: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tGravityAcc-std()-X: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tGravityAcc-std()-Y: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tGravityAcc-std()-Z: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyAccJerk-mean()-X: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyAccJerk-mean()-Y: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyAccJerk-mean()-Z: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyAccJerk-std()-X: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyAccJerk-std()-Y: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyAccJerk-std()-Z: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyGyro-mean()-X: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyGyro-mean()-Y: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyGyro-mean()-Z: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyGyro-std()-X: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyGyro-std()-Z: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyGyroJerk-mean()-X: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyGyroJerk-mean()-Y: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyGyroJerk-mean()-Z: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyGyroJerk-std()-X: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyGyroJerk-std()-Y: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyGyroJerk-std()-Z: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyAccMag-mean(): the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyAccMag-std(): the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tGravityAccMag-mean(): the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tGravityAccMag-std(): the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyAccJerkMag-mean(): the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyAccJerkMag-std(): the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyGyroMag-mean(): the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyGyroMag-std(): the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyGyroJerkMag-mean(): the mean, for each strata of Subject/Activity combination, of the orignially provided variable
tBodyGyroJerkMag-std(): the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyAcc-mean()-X: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyAcc-mean()-Y: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyAcc-mean()-Z: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyAcc-std()-X: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyAcc-std()-Y: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyAcc-std()-Z: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyAccJerk-mean()-X: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyAccJerk-mean()-Y: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyAccJerk-mean()-Z: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyAccJerk-std()-X: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyAccJerk-std()-Y: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyAccJerk-std()-Z: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyGyro-mean()-X: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyGyro-mean()-Y: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyGyro-mean()-Z: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyGyro-std()-X: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyGyro-std()-Y: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyGyro-std()-Z: the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyAccMag-mean(): the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyAccMag-std(): the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyBodyAccJerkMag-mean(): the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyBodyAccJerkMag-std(): the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyBodyGyroMag-mean(): the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyBodyGyroMag-std(): the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyBodyGyroJerkMag-mean(): the mean, for each strata of Subject/Activity combination, of the orignially provided variable
fBodyBodyGyroJerkMag-std(): the mean, for each strata of Subject/Activity combination, of the orignially provided variable





Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

