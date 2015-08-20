# Getting_and_Cleaning_Data

This repo contains files associated with the Johns Hopkins Getting and Cleaning Data class offered through Coursera.
Author: Nicolas Vacroux

Filename:  Readme.md
This file.

Filename:  run_analysis.R
This is the file that satisfies the requirements of the course project.  Operating on the assumption that the required data files are in the working directory, it performs the following operations:
1.  Read the test data file and activity id file into dataframes.  (Activity ids are effectively row names.)
2.  Read the train data file and activity id file into dataframes.  (Activity ids are effectively row names.)
3.  Read the activity labels and features files into dataframes.  The labels are keyed where an activity id uniquely identifies an activity.  Features are column names.
4.  Apply the column names to the test and train data frames.
5.  Combine the two test data frames into one data frame.
6.  Combine the two train data frames into one data frame.
7.  Apply column names to the combined test data frame.
8.  Apply column names to the combined train data frame.
9.  Combine the test and train dataframes into one large dataframe.
10. Filter the combined dataframe to include only the mean, standard deviation, and activity columns.
11. Replace the activity ids with activity names in the filtered dataframe.
12. Aggregate the various activities in the filtered dataset so that all data for each activity is colocated.
13. Write a text file of the final aggregated means and standard deviation dataframe.

Filename:  run_analysis-full_download_code.R
This file performs all the activities of activity_mean.R but includes code to download and unzip the raw data file.
This code will unzip the data file into a subdirectory of the working directory and contains all the required code to move from directory to directory to find the information it is looking for.

Filename:  activity_means.txt
This is the file that results from running run_analysis.R.  It contains the mean of the means and the mean of the standard deviations for every feature by activity.
This is a duplicate of the file uploaded to Coursera as part of this assignment.

Filename:  run_analysis_codebook.txt
This is the codebook associated with this course project.
