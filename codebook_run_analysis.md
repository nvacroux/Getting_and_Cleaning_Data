---
title: "Getting and Cleaning Data Course Project Tidy Data Set Code Book"
author: "Nicolas Vacroux"
date: "August 16, 2015"
output: html_document
---

Code Book for Johns Hopkins Getting and Cleaning Data course project (offered through Coursera)


Original Data

This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set".  The original dataset contains raw data gathered from smartphone accelerometers and gyroroscope 3-axial raw signals, which were processed to report data on 561 features.

The original dataset is located at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.  For detailed descriptions about the original dataset please refer to the README and features_info.txt file contained within the available zip file.


Tidy Data

The tidy dataset is a subset of the original dataset which contains only an average for each activity and each subject.

Activities:
    walking
    walking_upstairs
    walking_downstairs
    sitting
    standing
    laying [down]

Subjects:
    Note that <XYZ> can be the individual axis X, Y, or Z.  Substitute the axis of interest for <XYZ>.
    tBodyAcc-mean()-<XYZ> - Time body acceleration mean on a single axis
    tBodyAcc-std()-<XYZ> - Time body acceleration standard deviation on a single axis
    tGravityAcc-mean()-<XYZ> - Time gravity acceleration mean on a single axis
    tGravityAcc-std()-<XYZ> - Time gravity acceleration standard deviation on a single axis
    tBodyAccJerk-mean()-<XYZ> - Time body acceleration jerk mean on a single axis
    tBodyAccJerk-std()-<XYZ> - Time body acceleration jerk standard deviation on a single axis
    tBodyGyro-mean()-<XYZ> - Time body Gyroscope mean on a single axis
    tBodyGyro-std()-<XYZ> - Time body  Gyroscope standard deviation on a single axis
    tBodyGyroJerk-mean()-<XYZ> - Time body Gyroscope jerk mean on a single axis
    tBodyGyroJerk-std()-<XYZ> - Time body Gyroscope jerk standard deviation on a single axis
    tBodyAccMag-mean()-<XYZ> - Time body acceleration magnitude mean on a single axis
    tBodyAccMag-std()-<XYZ> - Time body acceleration magnitude standard deviation on a single axis
    tGravityAccMag-mean()-<XYZ> - Time gravity acceleration magnitude mean on a single axis
    tGravityAccMag-std()-<XYZ> - Time gravity acceleration magnituge standard deviation on a single axis
    tBodyAccJerkMag-mean()-<XYZ> - Time body acceleration jerk magnitude mean on a single axis
    tBodyAccjerkMag-std()-<XYZ> - Time body acceleration jerk magnitude standard deviation on a single axis
    tBodyGyroMag-mean()-<XYZ> - Time body gyroscope magnitude mean on a single axis
    tBodyGyroMag-std()-<XYZ> - Time body gyroscope magnitude standard deviation on a single axis
    tBodyGyroJerkMag-mean()-<XYZ> - Time body gyroscope jerk magnitude mean on a single axis
    tBodyGyroJerkMag-std()-<XYZ> - Time body gyroscope jerk magnitude standard deviation on a single axis
    fBodyAcc-mean()-<XYZ> - Frequency body acceleration mean on a single axis
    fBodyAcc-std()-<XYZ> - Frequency body acceleration mean on a single axis
    fGravityAcc-mean()-<XYZ> - Frequency gravity acceleration mean on a single axis
    fGravityAcc-std()-<XYZ> - Frequency gravity acceleration standard deviation on a single axis
    fBodyAccJerk-mean()-<XYZ> - Frequency body acceleration jerk mean on a single axis
    fBodyAccJerk-std()-<XYZ> - Frequency body acceleration jerk standard deviation on a single axis
    fBodyGyro-mean()-<XYZ> - Frequency body Gyroscope mean on a single axis
    fBodyGyro-std()-<XYZ> - Frequency body  Gyroscope standard deviation on a single axis
    fBodyGyroJerk-mean()-<XYZ> - Frequency body Gyroscope jerk mean on a single axis
    fBodyGyroJerk-std()-<XYZ> - Frequency body Gyroscope jerk standard deviation on a single axis
    fBodyAccMag-mean()-<XYZ> - Frequency body acceleration magnitude mean on a single axis
    fBodyAccMag-std()-<XYZ> - Frequency body acceleration magnitude standard deviation on a single axis
    fGravityAccMag-mean()-<XYZ> - Frequency gravity acceleration magnitude mean on a single axis
    fGravityAccMag-std()-<XYZ> - Frequency gravity acceleration magnituge standard deviation on a single axis
    fBodyAccJerkMag-mean()-<XYZ> - Frequency body acceleration jerk magnitude mean on a single axis
    fBodyAccjerkMag-std()-<XYZ> - Frequency body acceleration jerk magnitude standard deviation on a single axis
    fBodyGyroMag-mean()-<XYZ> - Frequency body gyroscope magnitude mean on a single axis
    fBodyGyroMag-std()-<XYZ> - Frequency body gyroscope magnitude standard deviation on a single axis
    fBodyGyroJerkMag-mean()-<XYZ> - Frequency body gyroscope jerk magnitude mean on a single axis
    fBodyGyroJerkMag-std()-<XYZ> - Frequency body gyroscope jerk magnitude standard deviation on a single axis    