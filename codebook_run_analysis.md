---
title: "Getting and Cleaning Data Course Project Tidy Data Set Code Book"
author: "Nicolas Vacroux"
date: "August 16, 2015"
output: html_document
---

# Code Book for Johns Hopkins Getting and Cleaning Data course project (offered through Coursera)


## Original Data

This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set".  The original dataset contains raw data gathered from smartphone accelerometers and gyroroscope 3-axial raw signals, which were processed to report data on 561 features.

The original dataset is located at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.  For detailed descriptions about the original dataset please refer to the README and features_info.txt file contained within the available zip file.


## Tidy Data

The tidy dataset is a subset of the original dataset which contains only an average for each activity and each subject.

### Activities:
    - walking
    - walking_upstairs
    - walking_downstairs
    - sitting
    - standing
    - laying [down]

### Faatures:
    Excerpt reproduced from the features_info.txt provided in the raw data zip file:
	- tBodyAcc-XYZ
	- tGravityAcc-XYZ
	- tBodyAccJerk-XYZ
	- tBodyGyro-XYZ
	- tBodyGyroJerk-XYZ
	- tBodyAccMag
	- tGravityAccMag
	- tBodyAccJerkMag
	- tBodyGyroMag
	- tBodyGyroJerkMag
	- fBodyAcc-XYZ
	- fBodyAccJerk-XYZ
	- fBodyGyro-XYZ
	- fBodyAccMag
	- fBodyAccJerkMag
	- fBodyGyroMag
	- fBodyGyroJerkMag

	The set of variables that were estimated from these signals are: 

	mean(): Mean value
	std(): Standard deviation
	
	Acceleration signals (from accelerometer) measured in meters per second squared.
	Angular velocity (from gyroscope) measured in radians per second.